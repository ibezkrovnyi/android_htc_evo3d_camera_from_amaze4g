.class Lcom/android/camera/sceneselector/CameraGallery$2;
.super Ljava/lang/Object;
.source "CameraGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/sceneselector/CameraGallery;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/sceneselector/CameraGallery;


# direct methods
.method constructor <init>(Lcom/android/camera/sceneselector/CameraGallery;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/sceneselector/CameraGallery$2;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$2;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-virtual {v0}, Lcom/android/camera/sceneselector/CameraGallery;->dispatchUnpress()V

    return-void
.end method
