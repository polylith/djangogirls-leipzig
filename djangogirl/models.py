from django.db import models


# Create your models here.
class Djangogirl(models.Model):
    name = models.CharField(max_length=300)
    forename = models.CharField(max_length=300)
    website_url = models.URLField(max_length=1000, null=True)
