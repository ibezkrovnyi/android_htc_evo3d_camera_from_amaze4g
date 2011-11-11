.class Lcom/android/camera/component/PanoramaController$1;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Lcom/android/camera/CloseCameraRequestEvent;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/camera/CloseCameraRequestEvent;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/camera/CloseCameraRequestEvent;->isHandled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$000(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$000(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v3

    invoke-interface {v3}, Lcom/scalado/camera/FeatureCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v3

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Release camera by PanoramaController"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$000(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v3

    invoke-interface {v3}, Lcom/scalado/camera/FeatureCamera;->release()V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/component/PanoramaController;->access$002(Lcom/android/camera/component/PanoramaController;Lcom/scalado/camera/FeatureCamera;)Lcom/scalado/camera/FeatureCamera;

    invoke-virtual {v2}, Lcom/android/camera/CloseCameraRequestEvent;->setHandled()V

    :cond_0
    return-void
.end method
