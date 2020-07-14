from rest_framework import routers
from .views import MobileData

router=routers.DefaultRouter()
router.register('mobiles',MobileData)