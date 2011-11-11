.class Lcom/scalado/app/rewind/AutoSession$ToUiHandler;
.super Landroid/os/Handler;
.source "AutoSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/AutoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/AutoSession;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/AutoSession;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/AutoSession;Lcom/scalado/app/rewind/AutoSession$ToUiHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;-><init>(Lcom/scalado/app/rewind/AutoSession;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onAllImagesAdded()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-interface {v1, p0}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onOutputDone(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-static {v1, v3}, Lcom/scalado/app/rewind/AutoSession;->access$1(Lcom/scalado/app/rewind/AutoSession;Z)V

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/scalado/base/Image;

    invoke-interface {v1, p0}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onLTWCompleted(Lcom/scalado/base/Image;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/scalado/base/Image;

    invoke-interface {v1, p0}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onMergedImage(Lcom/scalado/base/Image;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/scalado/base/Image;

    invoke-interface {v1, p0}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onSourceImage(Lcom/scalado/base/Image;)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    aget-object v3, v0, v3

    invoke-interface {v1, v2, v3}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onReplacementRects(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onError()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x80 -> :sswitch_2
        0x81 -> :sswitch_0
        0x8c -> :sswitch_1
        0xa0 -> :sswitch_5
        0x100 -> :sswitch_6
    .end sparse-switch
.end method

.method public removeAllMessages()V
    .locals 0

    return-void
.end method
