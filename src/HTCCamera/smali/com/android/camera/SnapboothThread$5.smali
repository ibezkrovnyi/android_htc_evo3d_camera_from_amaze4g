.class Lcom/android/camera/SnapboothThread$5;
.super Ljava/lang/Object;
.source "SnapboothThread.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SnapboothThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SnapboothThread;


# direct methods
.method constructor <init>(Lcom/android/camera/SnapboothThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SnapboothThread$5;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 8

    const/16 v4, 0x1f

    const/4 v3, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "SnapboothThread"

    sget-object v1, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->End()V

    sget-object v1, Lcom/android/camera/TIME;->StoreJpegImage:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->Start()V

    const-string v1, "SnapboothThread"

    const-string v1, "got JpegPictureCallback..."

    invoke-static {v7, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/SnapboothThread$5;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-static {v1, v5}, Lcom/android/camera/SnapboothThread;->access$502(Lcom/android/camera/SnapboothThread;Z)Z

    iget-object v1, p0, Lcom/android/camera/SnapboothThread$5;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-static {v1}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/camera/SnapboothThread$MainHandler;->hasMessages(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/SnapboothThread$5;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-static {v1}, Lcom/android/camera/SnapboothThread;->access$600(Lcom/android/camera/SnapboothThread;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/SnapboothThread$5;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-static {v1}, Lcom/android/camera/SnapboothThread;->access$600(Lcom/android/camera/SnapboothThread;)I

    move-result v1

    if-eq v1, v6, :cond_2

    iget-object v1, p0, Lcom/android/camera/SnapboothThread$5;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-static {v1}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :goto_0
    iget-object v1, p0, Lcom/android/camera/SnapboothThread$5;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-static {v1}, Lcom/android/camera/SnapboothThread;->access$700(Lcom/android/camera/SnapboothThread;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/SnapboothThread$5;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-static {v1}, Lcom/android/camera/SnapboothThread;->access$800(Lcom/android/camera/SnapboothThread;)I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/camera/SnapboothThread$5;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/SnapboothThread;->startPreview(IZ)V

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/SnapboothThread$5;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-static {v1}, Lcom/android/camera/SnapboothThread;->access$400(Lcom/android/camera/SnapboothThread;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/camera/SnapboothThread$5;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$800(Lcom/android/camera/SnapboothThread;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/camera/SnapboothThread$5;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-static {v1}, Lcom/android/camera/SnapboothThread;->access$804(Lcom/android/camera/SnapboothThread;)I

    :goto_2
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/SnapboothThread$5;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-static {v1}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/camera/SnapboothThread$5;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$800(Lcom/android/camera/SnapboothThread;)I

    move-result v3

    sub-int/2addr v3, v6

    invoke-static {v1, v2, v3, v5, p1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_1
    const-string v1, "SnapboothThread"

    const-string v1, "JpegPictureCallback end"

    invoke-static {v7, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/camera/SnapboothThread$5;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-static {v1, v5}, Lcom/android/camera/SnapboothThread;->access$602(Lcom/android/camera/SnapboothThread;I)I

    const-string v1, "SnapboothThread"

    const-string v1, "jpegcallback - mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v7, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/SnapboothThread$5;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-static {v1}, Lcom/android/camera/SnapboothThread;->access$400(Lcom/android/camera/SnapboothThread;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/android/camera/SnapboothThread$5;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-static {v1}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/camera/SnapboothThread$5;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-static {v1}, Lcom/android/camera/SnapboothThread;->access$400(Lcom/android/camera/SnapboothThread;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/android/camera/SnapboothThread$5;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-static {v1}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_2
.end method
