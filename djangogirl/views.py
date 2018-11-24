from django.views.generic import ListView

from djangogirl import models


class DjangogirlsListView(ListView):
    model = models.Djangogirl
