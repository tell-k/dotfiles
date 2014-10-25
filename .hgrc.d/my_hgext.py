# -*- coding: utf-8 -*-

"""
Usage
-----

1. merge current (feature) branch into another (main) branch::

     $ hg merge-into REV

2. show ticket summary::

     $ hg ticket [TICKET or REV]
"""

import re
from collections import defaultdict
import urllib
import json

from mercurial import ui, hg, commands

def get_user_count(repo):
    tip = repo.changectx("tip")

    user_count = defaultdict(int)
    for i in xrange(tip.rev()):
        ctx = repo.changectx(i)
        user = ctx.user()
        user_count[user] += 1

    return user_count

def print_users(ui, repo, **opts):
    user_count = get_user_count(repo)
    top_users = sorted(user_count, key=user_count.__getitem__, reverse=True)
    for user in top_users[:10]:
        print user_count[user], user

def get_ticket_id(node):
    # ブランチ名 = t<チケット番号>(-n)
    ticket = node.branch()
    m = re.match(r'^t([0-9]+)(?:-[0-9]+)?$', ticket)
    if m:
        ticket = m.group(1)
    return ticket

def merge_into(ui, repo, rev, **opts):
    node = repo.changectx(rev)
    curr = repo.changectx(".")
    commands.update(ui, repo, rev=node.rev())
    commands.merge(ui, repo, rev=curr.rev())
    ticket = get_ticket_id(curr)
    message = "refs #%(ticket)s merged %(target)s -> %(branch)s" % {
        "ticket": ticket,
        "target": curr.branch(),
        "branch": node.branch(),
        }
    commands.commit(ui, repo, message=message)

def show_ticket_summary(ui, repo, ticket_or_rev=None, **opts):
    if ticket_or_rev is None:
        ticket_id = get_ticket_id(repo.changectx("."))
    elif ticket_or_rev.startswith("#"):
        ticket_id = ticket_or_rev[1:]
    else:
        node = repo.changectx(ticket_or_rev)
        ticket_id = get_ticket_id(node)

    base_url = ui.config('redmine', 'base_url')
    api_key = ui.config('redmine', 'api_key')

    issue_url = base_url.rstrip('/') + '/issues/%s' % ticket_id
    res = urllib.urlopen(issue_url + ".json?key=" + api_key)
    content = res.read()
    res.close()

    d = json.loads(content)
    status = d["issue"]["status"]["name"]
    subject = d["issue"]["subject"]
    print (u"[%s] %s" % (status, subject)).encode('utf-8')
    print issue_url


# hg ti で ticket コマンドを実行したい場合に tip を無効化する
# tip コマンドがなくても hg log -r tip で代用できるので困らない
#
# try:
#     commands.table.pop("tip")
# except:
#     pass

cmdtable = {
    # "コマンド名": (関数, オプション, ヘルプ)
    "users": (print_users, [], "print users"),
    "merge-into": (merge_into, [], "rev"),
    "ticket": (show_ticket_summary, [], "ticket_or_rev")
}

def main():
    ui = ui.ui()
    repo = hg.repository(ui, ".")
    print_users(ui, repo)

if __name__ == '__main__':
    main()
