.class final Lcom/android/camera/IntentManager$2;
.super Ljava/lang/Object;
.source "IntentManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/IntentManager;->shareIntentChooser(Landroid/app/Activity;ILandroid/net/Uri;Ljava/lang/String;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$adapter:Lcom/android/camera/IntentManager$SharedAdapter;

.field final synthetic val$contentUri:Landroid/net/Uri;

.field final synthetic val$lastSharePrefName:Ljava/lang/String;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/IntentManager$SharedAdapter;Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/IntentManager$2;->val$adapter:Lcom/android/camera/IntentManager$SharedAdapter;

    iput-object p2, p0, Lcom/android/camera/IntentManager$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/camera/IntentManager$2;->val$contentUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/camera/IntentManager$2;->val$mimeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/camera/IntentManager$2;->val$lastSharePrefName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 21

    const/16 v18, 0x4

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$adapter:Lcom/android/camera/IntentManager$SharedAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/IntentManager$SharedAdapter;->isExpanded()Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$adapter:Lcom/android/camera/IntentManager$SharedAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/IntentManager$SharedAdapter;->expand()V

    check-cast p1, Lcom/android/camera/rotate/RotateDialog;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/rotate/RotateDialog;->getListView()Landroid/widget/ListView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ListView;->postInvalidate()V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$adapter:Lcom/android/camera/IntentManager$SharedAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/camera/IntentManager$SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/camera/HTCCamera;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$activity:Landroid/app/Activity;

    move-object v3, v0

    check-cast v3, Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v11

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v15

    if-eqz v11, :cond_1

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v10

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getStoredFileName()Ljava/lang/String;

    move-result-object v7

    :cond_1
    if-nez v15, :cond_4

    if-eqz v11, :cond_4

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$adapter:Lcom/android/camera/IntentManager$SharedAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$adapter:Lcom/android/camera/IntentManager$SharedAdapter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/IntentManager$SharedAdapter;->access$200(Lcom/android/camera/IntentManager$SharedAdapter;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/IntentManager$CustomAppInfo;

    move-object v0, v8

    iget-object v0, v0, Lcom/android/camera/IntentManager$CustomAppInfo;->resolve:Landroid/content/pm/ResolveInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    const/16 v18, 0x0

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v18, "com.htc.album.actions.threedconvert"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v7, :cond_3

    sget-object v18, Lcom/android/camera/DCFRuler$fileFormat;->MPO:Lcom/android/camera/DCFRuler$fileFormat;

    invoke-static/range {v18 .. v18}, Lcom/android/camera/DCFRuler;->getFileExtension(Lcom/android/camera/DCFRuler$fileFormat;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$contentUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    const-string v19, "image/mpo"

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v18, "SharedAdapter.KEY_PACKAGE_FOR_OTHER"

    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v18, "SharedAdapter.KEY_CLASS_NAME"

    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$adapter:Lcom/android/camera/IntentManager$SharedAdapter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/IntentManager$SharedAdapter;->access$200(Lcom/android/camera/IntentManager$SharedAdapter;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/IntentManager$CustomAppInfo;

    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$adapter:Lcom/android/camera/IntentManager$SharedAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/IntentManager$SharedAdapter;->getActivityLabel(Landroid/content/pm/PackageManager;Lcom/android/camera/IntentManager$CustomAppInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    const-string v18, "IntentManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "select label: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, "IntentManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "info.resolve.activityInfo.name: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v8

    iget-object v0, v0, Lcom/android/camera/IntentManager$CustomAppInfo;->resolve:Landroid/content/pm/ResolveInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$lastSharePrefName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$contentUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    const-string v19, "image/jps"

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportHTCMediaUploader()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.HTCAlbum.action.LAUNCH_UPLOAD_EDITOR"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$adapter:Lcom/android/camera/IntentManager$SharedAdapter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/IntentManager$SharedAdapter;->access$200(Lcom/android/camera/IntentManager$SharedAdapter;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/IntentManager$CustomAppInfo;

    move-object v0, v8

    iget-object v0, v0, Lcom/android/camera/IntentManager$CustomAppInfo;->resolve:Landroid/content/pm/ResolveInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    new-instance v6, Landroid/content/ComponentName;

    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v17

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v18, "com.htc.opensense.upload.URI"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$contentUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v4

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, "com.htc.opensense.upload.MIMETYPE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$mimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v4

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, "com.htc.opensense.upload.TITLE"

    const-string v19, ""

    move-object v0, v4

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, "com.htc.opensense.upload.DESCRIPTION"

    const-string v19, ""

    move-object v0, v4

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v18, 0x1

    move-object v0, v9

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v18, "htc.intent.action.SEND_MULTIPLE"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v18, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    move-object v0, v9

    move-object/from16 v1, v18

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v18, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.HTCAlbum.action.LAUNCH_UPLOAD_EDITOR"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$contentUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v18, "android.intent.extra.STREAM"

    move-object v0, v9

    move-object/from16 v1, v18

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_6
    const-string v18, "android.intent.extra.STREAM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$contentUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/IntentManager$2;->val$mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2
.end method
