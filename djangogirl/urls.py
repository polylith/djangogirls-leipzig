from django.urls import path

from djangogirl import views

urlpatterns = [
    path('', views.DjangogirlsListView.as_view()),
]
