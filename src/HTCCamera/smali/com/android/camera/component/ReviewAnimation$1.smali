.class Lcom/android/camera/component/ReviewAnimation$1;
.super Ljava/lang/Object;
.source "ReviewAnimation.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ReviewAnimation;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ReviewAnimation;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ReviewAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ReviewAnimation$1;->this$0:Lcom/android/camera/component/ReviewAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimation$1;->this$0:Lcom/android/camera/component/ReviewAnimation;

    invoke-static {v0}, Lcom/android/camera/component/ReviewAnimation;->access$000(Lcom/android/camera/component/ReviewAnimation;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimation$1;->this$0:Lcom/android/camera/component/ReviewAnimation;

    invoke-static {v0}, Lcom/android/camera/component/ReviewAnimation;->access$000(Lcom/android/camera/component/ReviewAnimation;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPaused()Z

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimation$1;->this$0:Lcom/android/camera/component/ReviewAnimation;

    iget-object v0, v0, Lcom/android/camera/component/ReviewAnimation;->cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimation$1;->this$0:Lcom/android/camera/component/ReviewAnimation;

    invoke-static {v0}, Lcom/android/camera/component/ReviewAnimation;->access$100(Lcom/android/camera/component/ReviewAnimation;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EVENT_ACTION_SCREEN_CLOSED, do nothing return"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimation$1;->this$0:Lcom/android/camera/component/ReviewAnimation;

    invoke-static {v0, v3}, Lcom/android/camera/component/ReviewAnimation;->access$200(Lcom/android/camera/component/ReviewAnimation;Z)V

    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/android/camera/actionscreen/ActionScreenEvent;

    invoke-virtual {p1}, Lcom/android/camera/actionscreen/ActionScreenEvent;->getCloseReason()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimation$1;->this$0:Lcom/android/camera/component/ReviewAnimation;

    invoke-static {v0}, Lcom/android/camera/component/ReviewAnimation;->access$000(Lcom/android/camera/component/ReviewAnimation;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimation$1;->this$0:Lcom/android/camera/component/ReviewAnimation;

    invoke-static {v0}, Lcom/android/camera/component/ReviewAnimation;->access$000(Lcom/android/camera/component/ReviewAnimation;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimation$1;->this$0:Lcom/android/camera/component/ReviewAnimation;

    invoke-static {v0}, Lcom/android/camera/component/ReviewAnimation;->access$300(Lcom/android/camera/component/ReviewAnimation;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimation$1;->this$0:Lcom/android/camera/component/ReviewAnimation;

    invoke-static {v0, v3}, Lcom/android/camera/component/ReviewAnimation;->access$200(Lcom/android/camera/component/ReviewAnimation;Z)V

    goto :goto_0
.end method
