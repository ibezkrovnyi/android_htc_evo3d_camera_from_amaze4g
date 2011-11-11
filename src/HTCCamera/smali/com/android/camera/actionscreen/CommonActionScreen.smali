.class public Lcom/android/camera/actionscreen/CommonActionScreen;
.super Lcom/android/camera/actionscreen/ActionScreen;
.source "CommonActionScreen.java"


# static fields
.field private static final ACTION_DELETE:I = 0x6

.field private static final ACTION_NONE:I = 0x0

.field private static final ACTION_PLAY:I = 0x9

.field private static final ACTION_RECAPTURE:I = 0x5

.field private static final ACTION_SETAS:I = 0x8

.field private static final ACTION_SHARE:I = 0x7

.field private static final MSG_CLOSE:I = 0x1

.field public static final NAME:Ljava/lang/String; = "Common Action Screen"


# instance fields
.field private mSetAsText:Landroid/widget/TextView;

.field private m_BackButton:Landroid/view/View;

.field private m_CurrentAction:I

.field private m_CurrentDialog:Landroid/app/Dialog;

.field private m_DeleteButton:Landroid/view/View;

.field private m_DialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private m_DialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private m_DialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private m_IsTimeout:Z

.field private m_IsTouchDelegateSet:Z

.field private m_PlayButton:Landroid/view/View;

.field private m_ReviewBar:Landroid/view/View;

.field private m_ReviewContainer:Landroid/view/View;

.field private m_RotateContainer:[Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_SetAsButton:Landroid/view/View;

.field private m_SetAs_icon:Landroid/widget/ImageView;

.field private m_ShareButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Common Action Screen"

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f03000b

    :goto_0
    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/actionscreen/ActionScreen;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:I

    iput-object v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAs_icon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->mSetAsText:Landroid/widget/TextView;

    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$1;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$1;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$2;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$2;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$3;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$3;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void

    :cond_0
    const v1, 0x7f03000c

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/camera/actionscreen/CommonActionScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/actionscreen/CommonActionScreen;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onShareClicked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onDeleteClicked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onCaptureClicked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onSetAsClicked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onPlayClicked()V

    return-void
.end method

.method private onCaptureClicked()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureClicked() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is closed, cancel action"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Another action is performing, cannot re-capture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:I

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, close later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->close(IZ)V

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureClicked() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDeleteClicked()V
    .locals 8

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "onDeleteClicked() - start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "Action screen is closed, cancel action"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget v4, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "Another action is performing, cannot delete content"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    const/4 v4, 0x6

    iput v4, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:I

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "Media is not saved yet, delete content later"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/android/camera/actionscreen/CommonActionScreen$5;

    invoke-direct {v2, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$5;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    new-instance v1, Lcom/android/camera/actionscreen/CommonActionScreen$6;

    invoke-direct {v1, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$6;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    new-instance v3, Lcom/android/camera/QueryEvent;

    const-string v4, "Query.ConfirmDeletingMediaMessage"

    invoke-direct {v3, v4}, Lcom/android/camera/QueryEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {v3}, Lcom/android/camera/QueryEvent;->hasResult()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/android/camera/QueryEvent;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    new-instance v4, Lcom/android/camera/rotate/RotateDialog$Builder;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x20c01fc

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x20c013c

    invoke-virtual {v4, v5, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x20c013d

    invoke-virtual {v4, v5, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v4, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v4, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    check-cast v4, Lcom/android/camera/rotate/RotateDialog;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog;->setOrientation(I)V

    iget-object v4, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "onDeleteClicked() - end"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0125

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getStoredFileName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private onPlayClicked()V
    .locals 6

    const/4 v5, 0x1

    const-string v3, "landscape"

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPlayClicked() - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Action screen is closed, cancel action"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Another action is performing, cannot play video"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    const/16 v3, 0x9

    iput v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:I

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Media is not saved yet, play video later"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v0, 0x1

    :try_start_0
    const-string v3, "com.htc.video"

    const-string v4, "com.htc.video.ViewVideo"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "landscape"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v0, :cond_4

    :try_start_1
    const-string v3, "com.htc.album"

    const-string v4, "com.htc.album.TabPluginDevice.ViewVideo"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "landscape"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPlayClicked() - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "com.htc.video - play video fail"

    invoke-static {v3, v4, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v1, v3

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "com.htc.album - play video fail"

    invoke-static {v3, v4, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private onSetAsClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onSetAsClicked() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is closed, cancel action"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Another action is performing, cannot set media"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:I

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, set later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->setasIntentChooser()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot create dialog"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onSetAsClicked() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onShareClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShareClicked() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is closed, cancel action"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Another action is performing, cannot share content"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:I

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, share content later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->shareIntentChooser(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot create dialog"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShareClicked() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onTimeout()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onTimeout() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is closed, cancel action"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTimeout:Z

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, close later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->close(IZ)V

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onTimeout() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareDoubleShotActionScreen()V
    .locals 13

    const v12, 0x7f080066

    const v11, 0x7f080065

    const v10, 0x7f0200b9

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getLayout()Landroid/view/View;

    move-result-object v1

    const v7, 0x7f08000f

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const/4 v7, 0x4

    new-array v8, v7, [Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v9, 0x0

    const v7, 0x7f08006f

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v7, v8, v9

    const/4 v9, 0x1

    const v7, 0x7f08006b

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v7, v8, v9

    const/4 v9, 0x2

    const v7, 0x7f080067

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v7, v8, v9

    const/4 v9, 0x3

    const v7, 0x7f080063

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v7, v8, v9

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_RotateContainer:[Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v8, 0x7f080011

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$7;

    invoke-direct {v8, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$7;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v8, 0x7f080012

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$8;

    invoke-direct {v8, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$8;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v8, 0x7f080013

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$9;

    invoke-direct {v8, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$9;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v8, 0x7f080010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAs_icon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAs_icon:Landroid/widget/ImageView;

    const v8, 0x7f020064

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->mSetAsText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->mSetAsText:Landroid/widget/TextView;

    const v8, 0x7f0a0135

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$10;

    invoke-direct {v8, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$10;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    const v8, 0x7f0a0005

    invoke-static {v2, v8, v10}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    const v8, 0x7f0a0006

    invoke-static {v2, v8, v10}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    const v8, 0x7f0a0007

    invoke-static {v2, v8, v10}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    const v8, 0x7f0a0008

    invoke-static {v2, v8, v10}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v6

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_RotateContainer:[Lcom/android/camera/rotate/RotateRelativeLayout;

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    invoke-virtual {v3, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAs_icon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAs_icon:Landroid/widget/ImageView;

    const v8, 0x7f0200a4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->mSetAsText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->mSetAsText:Landroid/widget/TextView;

    const v8, 0x7f0a0136

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$11;

    invoke-direct {v8, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$11;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private prepareHtcActionScreen()V
    .locals 11

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getLayout()Landroid/view/View;

    move-result-object v1

    const v7, 0x7f08007d

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    const v8, 0x7f08007f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    const/4 v7, 0x5

    new-array v7, v7, [Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v8, 0x0

    const v9, 0x7f080077

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v0, v7, v8

    const/4 v8, 0x1

    const v9, 0x7f08007c

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v0, v7, v8

    const/4 v8, 0x2

    const v9, 0x7f08007b

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v0, v7, v8

    const/4 v8, 0x3

    const v9, 0x7f080079

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v0, v7, v8

    const/4 v8, 0x4

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v0, v7, v8

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_RotateContainer:[Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f080073

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v7, 0x7f080078

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    new-instance v7, Lcom/android/camera/actionscreen/CommonActionScreen$12;

    invoke-direct {v7, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$12;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$13;

    invoke-direct {v8, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$13;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f080075

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$14;

    invoke-direct {v8, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$14;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$15;

    invoke-direct {v8, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$15;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f080074

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$16;

    invoke-direct {v8, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$16;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f080076

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$17;

    invoke-direct {v8, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$17;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v8, 0x7f02012b

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    const v9, 0x7f0a0013

    const v10, 0x7f020006

    invoke-static {v8, v9, v10}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    const v8, 0x7f0b0067

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v8, 0x7f08007a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b006a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v8, 0x7f08007b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v8, 0x7f08007c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b0069

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    :goto_0
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    const v9, 0x7f0a0012

    const v10, 0x7f020129

    invoke-static {v8, v9, v10}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    const v9, 0x7f0a0012

    const v10, 0x7f020129

    invoke-static {v8, v9, v10}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    const v9, 0x7f0a0012

    const v10, 0x7f020129

    invoke-static {v8, v9, v10}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v5

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_RotateContainer:[Lcom/android/camera/rotate/RotateRelativeLayout;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    invoke-virtual {v2, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v8, 0x7f02012a

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    const v9, 0x7f0a0014

    const v10, 0x7f020005

    invoke-static {v8, v9, v10}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    const v8, 0x7f0b0065

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v8, 0x7f08007a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b0064

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v8, 0x7f08007b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v8, 0x7f08007c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b0068

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private startAutoCloseTimer()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTimeout:Z

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_camera_review_duration"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x7d0

    :goto_0
    invoke-virtual {p0, p0, v4, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->sendMessage(Lcom/android/camera/component/Component;II)Z

    :cond_0
    return-void

    :cond_1
    const-string v2, "3s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0xbb8

    goto :goto_0

    :cond_2
    const-string v2, "5s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0x1388

    goto :goto_0

    :cond_3
    const-string v2, "10s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x2710

    goto :goto_0
.end method


# virtual methods
.method protected closeActionScreen(Z)V
    .locals 8

    const-wide/16 v4, 0x12c

    const-wide/16 v2, 0x0

    const/4 v7, 0x4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentDialog:Landroid/app/Dialog;

    :cond_0
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const/4 v1, 0x2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    move-result-object v6

    :goto_0
    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$4;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$4;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const/4 v1, 0x3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    move-result-object v6

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/actionscreen/ActionScreen;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onTimeout()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/actionscreen/ActionScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onCaptureClicked()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMediaSaveCompleted(Lcom/android/camera/MediaEvent;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/actionscreen/ActionScreen;->onMediaSaveCompleted(Lcom/android/camera/MediaEvent;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p1, Lcom/android/camera/MediaSaveFailedEvent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Media save failed"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTimeout:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    :cond_3
    iget v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onCaptureClicked()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onDeleteClicked()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onShareClicked()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onSetAsClicked()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onPlayClicked()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected openActionScreen()V
    .locals 7

    const-wide/16 v4, 0x12c

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:I

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const/4 v1, 0x2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    :goto_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v6, v6}, Lcom/android/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTouchDelegateSet:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setTouchDelegate(Landroid/view/View;Landroid/view/View;)V

    iput-boolean v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTouchDelegateSet:Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const/4 v1, 0x3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method protected prepareActionScreen()V
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->prepareDoubleShotActionScreen()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->prepareHtcActionScreen()V

    goto :goto_0
.end method
