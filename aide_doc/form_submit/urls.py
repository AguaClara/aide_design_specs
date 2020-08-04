from django.urls import path
from . import views

urlpatterns = [
    path('', views.submit_form, name="form"),
    path('index', views.index),
    path('<slug:doc>/<slug:page>.html', views.docs)
]
