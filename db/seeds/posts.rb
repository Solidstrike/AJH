
Post.create(user: User.first, project: Project.first, content: 'something')
Post.create(user:User.last, project: Project.first, content: 'something back')
