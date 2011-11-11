.class Lcom/android/camera/component/PanoramaUI$7;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PanoramaUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaUI$7;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$7;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-static {v1}, Lcom/android/camera/component/PanoramaUI;->access$000(Lcom/android/camera/component/PanoramaUI;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$7;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-static {v1}, Lcom/android/camera/component/PanoramaUI;->access$900(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$7;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-static {v1}, Lcom/android/camera/component/PanoramaUI;->access$900(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI$7;->this$0:Lcom/android/camera/component/PanoramaUI;

    check-cast p1, Lcom/android/camera/OneValueEvent;

    invoke-virtual {p1}, Lcom/android/camera/OneValueEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/camera/component/PanoramaUI;->access$1000(Lcom/android/camera/component/PanoramaUI;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$7;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-static {v1}, Lcom/android/camera/component/PanoramaUI;->access$1100(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/widget/PanoramaIndicatorView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/PanoramaIndicatorView;->setDeviceOrientation(I)V

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$7;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-static {v1}, Lcom/android/camera/component/PanoramaUI;->access$1200(Lcom/android/camera/component/PanoramaUI;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/component/PanoramaUI;->access$1300()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$7;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/component/PanoramaUI;->stopCapture()V

    :cond_0
    return-void
.end method
