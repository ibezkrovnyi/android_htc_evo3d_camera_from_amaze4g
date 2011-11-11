.class Lcom/android/camera/component/ZoomBarUI$12;
.super Ljava/lang/Object;
.source "ZoomBarUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ZoomBarUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ZoomBarUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ZoomBarUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ZoomBarUI$12;->this$0:Lcom/android/camera/component/ZoomBarUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI$12;->this$0:Lcom/android/camera/component/ZoomBarUI;

    invoke-static {v0}, Lcom/android/camera/component/ZoomBarUI;->access$1100(Lcom/android/camera/component/ZoomBarUI;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI$12;->this$0:Lcom/android/camera/component/ZoomBarUI;

    invoke-static {v0}, Lcom/android/camera/component/ZoomBarUI;->access$1100(Lcom/android/camera/component/ZoomBarUI;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI$12;->this$0:Lcom/android/camera/component/ZoomBarUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ZoomBarUI;->sendShowZoomProgressMessage()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI$12;->this$0:Lcom/android/camera/component/ZoomBarUI;

    invoke-static {v0}, Lcom/android/camera/component/ZoomBarUI;->access$100(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/widget/ZoomBar_ds;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI$12;->this$0:Lcom/android/camera/component/ZoomBarUI;

    invoke-static {v0}, Lcom/android/camera/component/ZoomBarUI;->access$100(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/widget/ZoomBar_ds;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ZoomBar_ds;->increasePosition(I)V

    goto :goto_0
.end method
