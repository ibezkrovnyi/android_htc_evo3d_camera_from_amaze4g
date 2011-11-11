.class Lcom/android/camera/actionscreen/ActionScreen$3;
.super Ljava/lang/Object;
.source "ActionScreen.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actionscreen/ActionScreen;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actionscreen/ActionScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/actionscreen/ActionScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/ActionScreen$3;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Lcom/android/camera/KeyEvent;

    move-object v1, v0

    iget-object v2, p0, Lcom/android/camera/actionscreen/ActionScreen$3;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-static {v2}, Lcom/android/camera/actionscreen/ActionScreen;->access$200(Lcom/android/camera/actionscreen/ActionScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/actionscreen/ActionScreen$3;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v1}, Lcom/android/camera/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/camera/KeyEvent;->getNativeKeyEvent()Landroid/view/KeyEvent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/actionscreen/ActionScreen;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/KeyEvent;->setHandled()V

    :cond_0
    return-void
.end method
