.class Lcom/android/camera/HTCSnapbooth$MainHandler;
.super Landroid/os/Handler;
.source "HTCSnapbooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCSnapbooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCSnapbooth;


# direct methods
.method private constructor <init>(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/HTCSnapbooth;Lcom/android/camera/HTCSnapbooth$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth$MainHandler;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-string v14, "HTCSnapbooth"

    const-string v1, "HTCSnapbooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainHandler Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v1, v0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - RESET_SURFACEVIEW_LAYOUT start"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HTCSnapbooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$100(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v2, v0

    if-ne v2, v7, :cond_0

    move v2, v7

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/camera/SnapboothCustomize;->updatePreviewOrientation(Z)V

    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - RESET_SURFACEVIEW_LAYOUT end"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :sswitch_1
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - PREVIEW_STARTED start"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1, v7}, Lcom/android/camera/HTCSnapbooth;->access$202(Lcom/android/camera/HTCSnapbooth;Z)Z

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$300(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v1

    if-ne v1, v7, :cond_1

    const-string v1, "HTCSnapbooth"

    const-string v1, "mActivityOnPause == true, UIHandler Message - DO_CREATE_AFTER_PREVIEW end"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$100(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$100(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/SnapboothCustomize;->showPreviewCover(Z)V

    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v1, v0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1, v4}, Lcom/android/camera/HTCSnapbooth;->access$402(Lcom/android/camera/HTCSnapbooth;Z)Z

    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v1, v0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1, v4}, Lcom/android/camera/HTCSnapbooth;->access$502(Lcom/android/camera/HTCSnapbooth;Z)Z

    :cond_4
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - PREVIEW_STARTED end"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - PREVIEW_STOPPED start"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1, v4}, Lcom/android/camera/HTCSnapbooth;->access$202(Lcom/android/camera/HTCSnapbooth;Z)Z

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$100(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$100(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/camera/SnapboothCustomize;->showPreviewCover(Z)V

    :cond_5
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - PREVIEW_STOPPED end"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - FIRST_PREVIEW_FRAME_ARRIVED start"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$300(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1, v7}, Lcom/android/camera/HTCSnapbooth;->access$602(Lcom/android/camera/HTCSnapbooth;Z)Z

    :cond_6
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - FIRST_PREVIEW_FRAME_ARRIVED end"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - CAPTURE_CANCELED start"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1, v4}, Lcom/android/camera/HTCSnapbooth;->access$702(Lcom/android/camera/HTCSnapbooth;Z)Z

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$800(Lcom/android/camera/HTCSnapbooth;)V

    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - CAPTURE_CANCELED end"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - CAPTURE_COMPLETED start"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$100(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/SnapboothCustomize;->selectEffectIcon(I)V

    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - CAPTURE_COMPLETED end"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - COUNT_DOWN_SELFTIMER start"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$700(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "HTCSnapbooth"

    const-string v1, "Capture is canceled"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - COUNT_DOWN_SELFTIMER end"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v13, v0

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$900(Lcom/android/camera/HTCSnapbooth;)I

    move-result v1

    invoke-static {v1, v4}, Lcom/android/camera/rotate/OrientationConfig;->mapDrgreeToUIOrientationEx(IZ)I

    move-result v10

    if-lez v13, :cond_9

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$1000(Lcom/android/camera/HTCSnapbooth;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    sub-int v3, v13, v7

    const/16 v6, 0x320

    if-le v13, v7, :cond_8

    move v7, v4

    :goto_2
    sub-int/2addr v6, v7

    int-to-long v6, v6

    invoke-static/range {v1 .. v7}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$100(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v1

    invoke-virtual {v1, v13, v10}, Lcom/android/camera/SnapboothCustomize;->enableCountdown(II)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCSnapbooth;->PlaySound(I)V

    :goto_3
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - COUNT_DOWN_SELFTIMER end"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/16 v7, 0x1f4

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$100(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/camera/SnapboothCustomize;->disableCountdowns(I)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$1100(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$1200(Lcom/android/camera/HTCSnapbooth;)I

    move-result v1

    if-ne v1, v6, :cond_c

    :cond_a
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$1300(Lcom/android/camera/HTCSnapbooth;)V

    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1, v4}, Lcom/android/camera/HTCSnapbooth;->access$602(Lcom/android/camera/HTCSnapbooth;Z)Z

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$000(Lcom/android/camera/HTCSnapbooth;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v3}, Lcom/android/camera/HTCSnapbooth;->access$1100(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v1, v6, v4, v4, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_3

    :cond_c
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$1400(Lcom/android/camera/HTCSnapbooth;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$1400(Lcom/android/camera/HTCSnapbooth;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :sswitch_7
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - UPDATE_MULTISHUTTER_BUBBLE start"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HTCSnapbooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentShutterNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v2}, Lcom/android/camera/HTCSnapbooth;->access$1200(Lcom/android/camera/HTCSnapbooth;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v2, v0

    invoke-static {v1, v2}, Lcom/android/camera/HTCSnapbooth;->access$1202(Lcom/android/camera/HTCSnapbooth;I)I

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$1200(Lcom/android/camera/HTCSnapbooth;)I

    move-result v1

    if-le v1, v7, :cond_d

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$1500(Lcom/android/camera/HTCSnapbooth;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$100(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v2}, Lcom/android/camera/HTCSnapbooth;->access$1200(Lcom/android/camera/HTCSnapbooth;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/SnapboothCustomize;->enableCountBubble(I)V

    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - UPDATE_MULTISHUTTER_BUBBLE end"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - STORE_IMAGE_FAILED start"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    const v2, 0x7f0a014a

    invoke-static {v1, v2, v5}, Lcom/android/camera/HTCSnapbooth;->access$1600(Lcom/android/camera/HTCSnapbooth;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$000(Lcom/android/camera/HTCSnapbooth;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v4, v4, v4, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1, v4, v4}, Lcom/android/camera/HTCSnapbooth;->access$1700(Lcom/android/camera/HTCSnapbooth;ZZ)V

    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - STORE_IMAGE_FAILED end"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - REVIEW_SCREEN start"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Landroid/graphics/Bitmap;

    move-object v0, v1

    check-cast v0, [Landroid/graphics/Bitmap;

    move-object v8, v0

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    aget-object v2, v8, v4

    aget-object v3, v8, v7

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCSnapbooth;->access$1800(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - REVIEW_SCREEN end"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - REVIEW_ANIMATION start"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1, v7, v7}, Lcom/android/camera/HTCSnapbooth;->access$1700(Lcom/android/camera/HTCSnapbooth;ZZ)V

    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - REVIEW_ANIMATION end"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - INIT_THUMBNAIL_CREATED start"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v1}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$1900(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$2000(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$2000(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1, v12}, Lcom/android/camera/HTCSnapbooth;->access$2002(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$2100(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v2}, Lcom/android/camera/HTCSnapbooth;->access$2000(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$2200(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v2}, Lcom/android/camera/HTCSnapbooth;->access$2000(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_f
    :goto_5
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - INIT_THUMBNAIL_CREATED end"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    if-eqz v12, :cond_f

    const-string v1, "HTCSnapbooth"

    const-string v1, "Thumbnail image is not needed, recycled"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    :sswitch_c
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - SHOW_TOAST start"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v2, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object p0, v0

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, v2, p0}, Lcom/android/camera/HTCSnapbooth;->access$1600(Lcom/android/camera/HTCSnapbooth;ILjava/lang/String;)V

    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - SHOW_TOAST end"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - NOTIFY_STORAGE_STATE start"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v11, v0

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$2100(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v1, 0x2

    if-ne v11, v1, :cond_11

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$2000(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$000(Lcom/android/camera/HTCSnapbooth;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_11
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1, v11, v7}, Lcom/android/camera/HTCSnapbooth;->access$2300(Lcom/android/camera/HTCSnapbooth;IZ)V

    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - NOTIFY_STORAGE_STATE end"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - PLAY_SOUND start"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v9, v0

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v1, v9}, Lcom/android/camera/HTCSnapbooth;->PlaySound(I)V

    const-string v1, "HTCSnapbooth"

    const-string v1, "UIHandler Message - PLAY_SOUND end"

    invoke-static {v14, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_3
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0x1f -> :sswitch_c
        0x22 -> :sswitch_e
        0x2a -> :sswitch_d
        0x64 -> :sswitch_b
        0x65 -> :sswitch_8
    .end sparse-switch
.end method
