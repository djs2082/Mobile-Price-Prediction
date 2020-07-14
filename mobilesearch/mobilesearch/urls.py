from django.contrib import admin
from django.urls import path,include
from api.urls import router
from rest_framework.authtoken import views
from api import views as apiviews

urlpatterns = [
   path('admin/', admin.site.urls),
   path('api/',include(router.urls)),
   path('get_token/',views.obtain_auth_token,name='api-token-auth'),
]
