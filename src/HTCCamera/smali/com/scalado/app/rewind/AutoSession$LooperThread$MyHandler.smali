.class Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
.super Landroid/os/Handler;
.source "AutoSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/AutoSession$LooperThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/AutoSession$LooperThread;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/AutoSession$LooperThread;Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;-><init>(Lcom/scalado/app/rewind/AutoSession$LooperThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "what = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$1(Lcom/scalado/app/rewind/AutoSession$LooperThread;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession;->access$2(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$3(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {v0, p0}, Lcom/scalado/app/rewind/AutoSession;->access$3(Lcom/scalado/app/rewind/AutoSession;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$3(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/scalado/app/rewind/AutoSession;->access$4(Lcom/scalado/app/rewind/AutoSession;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$3(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession;->access$5(Lcom/scalado/app/rewind/AutoSession;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$3(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->access$6(Lcom/scalado/app/rewind/AutoSession;I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$3(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession;->access$7(Lcom/scalado/app/rewind/AutoSession;)V

    goto :goto_0

    :sswitch_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$3(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession;->access$7(Lcom/scalado/app/rewind/AutoSession;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$3(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/scalado/app/rewind/AutoSession;->access$8(Lcom/scalado/app/rewind/AutoSession;ILjava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x10 -> :sswitch_6
        0x20 -> :sswitch_5
    .end sparse-switch
.end method
