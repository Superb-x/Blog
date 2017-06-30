from django.db import models

class Comment(models.Model):
    name = models.CharField(max_length=200)
    email = models.EmailField(max_length=255)
    url = models.URLField(blank=True)
    text = models.TextField()
    create_time = models.DateTimeField(auto_now_add=True)

    post = models.ForeignKey('server.Post')

    def __str__(self):
        return self.text[:20]