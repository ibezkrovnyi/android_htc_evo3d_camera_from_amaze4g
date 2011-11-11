.class Lcom/android/camera/actionscreen/ActionScreen$1$1;
.super Ljava/lang/Object;
.source "ActionScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actionscreen/ActionScreen$1;->onEvent(Lcom/android/camera/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/actionscreen/ActionScreen$1;

.field final synthetic val$event:Lcom/android/camera/Event;


# direct methods
.method constructor <init>(Lcom/android/camera/actionscreen/ActionScreen$1;Lcom/android/camera/Event;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/ActionScreen$1$1;->this$1:Lcom/android/camera/actionscreen/ActionScreen$1;

    iput-object p2, p0, Lcom/android/camera/actionscreen/ActionScreen$1$1;->val$event:Lcom/android/camera/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen$1$1;->this$1:Lcom/android/camera/actionscreen/ActionScreen$1;

    iget-object v0, v0, Lcom/android/camera/actionscreen/ActionScreen$1;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-static {v0}, Lcom/android/camera/actionscreen/ActionScreen;->access$000(Lcom/android/camera/actionscreen/ActionScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen$1$1;->this$1:Lcom/android/camera/actionscreen/ActionScreen$1;

    iget-object v0, v0, Lcom/android/camera/actionscreen/ActionScreen$1;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-static {v0}, Lcom/android/camera/actionscreen/ActionScreen;->access$100(Lcom/android/camera/actionscreen/ActionScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen$1$1;->this$1:Lcom/android/camera/actionscreen/ActionScreen$1;

    iget-object v0, v0, Lcom/android/camera/actionscreen/ActionScreen$1;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/actionscreen/ActionScreen;->access$002(Lcom/android/camera/actionscreen/ActionScreen;Z)Z

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen$1$1;->this$1:Lcom/android/camera/actionscreen/ActionScreen$1;

    iget-object v0, v0, Lcom/android/camera/actionscreen/ActionScreen$1;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-static {v0}, Lcom/android/camera/actionscreen/ActionScreen;->access$200(Lcom/android/camera/actionscreen/ActionScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen$1$1;->this$1:Lcom/android/camera/actionscreen/ActionScreen$1;

    iget-object v0, v0, Lcom/android/camera/actionscreen/ActionScreen$1;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    iget-object p0, p0, Lcom/android/camera/actionscreen/ActionScreen$1$1;->val$event:Lcom/android/camera/Event;

    check-cast p0, Lcom/android/camera/MediaEvent;

    invoke-virtual {v0, p0}, Lcom/android/camera/actionscreen/ActionScreen;->onMediaSaveCompleted(Lcom/android/camera/MediaEvent;)V

    :cond_0
    return-void
.end method
