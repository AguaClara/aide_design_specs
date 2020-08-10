from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from . import views

urlpatterns = [
    path('', views.submit_form, name="form"),
    path('index', views.index),
    path('<slug:doc>/<slug:page>.html', views.docs),
    path('_images/<slug:image>.png', views.image)
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
