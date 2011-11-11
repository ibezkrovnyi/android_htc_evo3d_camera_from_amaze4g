.class Lcom/android/camera/sceneselector/CameraGallery$1;
.super Ljava/lang/Object;
.source "CameraGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/sceneselector/CameraGallery;
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

    iput-object p1, p0, Lcom/android/camera/sceneselector/CameraGallery$1;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$1;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/sceneselector/CameraGallery;->mSuppressSelectionChanged:Z

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$1;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-virtual {v0}, Lcom/android/camera/sceneselector/CameraGallery;->selectionChanged()V

    return-void
.end method
