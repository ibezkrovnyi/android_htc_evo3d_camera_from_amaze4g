.class public Lcom/android/camera/Camera_Util;
.super Ljava/lang/Object;
.source "Camera_Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera_Util$RenderMode;,
        Lcom/android/camera/Camera_Util$Image_Size;
    }
.end annotation


# static fields
.field public static final StampMargin:I = 0x1e

.field public static final TAG:Ljava/lang/String; = "Camera_Util"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "camerautil"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/Camera_Util;->nativeBegin()V

    return-void
.end method

.method public static native CheckImageFileSupport(Ljava/lang/String;)Z
.end method

.method public static native CreateSession(Ljava/lang/String;)I
.end method

.method public static native DestroySession(Ljava/lang/String;)I
.end method

.method public static native DocToScreen(Ljava/lang/String;[I)I
.end method

.method public static native GetImageSize(Ljava/lang/String;[I)I
.end method

.method public static InsertSPMOToJPEGImage(Ljava/lang/String;II)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/camera/Camera_Util;->addSpmoToJPG(Ljava/lang/String;II)I

    move-result v0

    return-void
.end method

.method public static native PartialDecode(Ljava/lang/String;Landroid/graphics/Bitmap;IIFI)V
.end method

.method public static native PartialDecodeAbsolute(Ljava/lang/String;Landroid/graphics/Bitmap;IIFI)V
.end method

.method public static native SetSessionOption(ZZ)V
.end method

.method public static addSignature(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    const/16 v10, 0x1e

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/16 v8, 0xff

    invoke-static {v8, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    sub-int v8, v5, v10

    sub-int/2addr v8, v4

    int-to-float v6, v8

    sub-int v8, v2, v10

    sub-int/2addr v8, v1

    int-to-float v7, v8

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v9, v9, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/RectF;

    int-to-float v10, v4

    add-float/2addr v10, v6

    int-to-float v11, v1

    add-float/2addr v11, v7

    invoke-direct {v9, v6, v7, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p0, v8, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object p0
.end method

.method private static native addSpmoToJPG(Ljava/lang/String;II)I
.end method

.method public static addTimeStamp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/16 v0, 0xff

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    const-string v0, "Camera_Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "default font size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x41c8

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v5, 0x3

    invoke-static {v2, v5}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    const/16 v7, 0x1e

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float v5, v6, v5

    const/16 v6, 0x1e

    sub-int/2addr v3, v6

    int-to-float v3, v3

    sub-float v2, v3, v2

    invoke-virtual {v1, v0, v5, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object p0
.end method

.method public static addTimeStampByCopyBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 5

    const-string v3, "Camera_Util"

    const-string v4, "addTimeStampByCopyBitmap"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Camera_Util;->addTimeStamp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static addTimeStampUsingNative(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 8

    const-string v0, "Camera_Util"

    const-string v1, "addTimeStampUsingNative"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41c8

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "Camera_Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTimeStamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    const/16 v7, 0x1e

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float v5, v6, v5

    const/16 v6, 0x1e

    sub-int/2addr v3, v6

    int-to-float v3, v3

    sub-float v2, v3, v2

    invoke-static {v0, v1, v5, v2, v4}, Lcom/android/camera/Camera_Util;->nativeAddTimeStamp(Landroid/graphics/Bitmap;Ljava/lang/String;FFLandroid/graphics/Paint;)Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object p0

    :try_start_2
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x4b

    invoke-virtual {v0, p1, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception p0

    move-object p0, v1

    goto :goto_1
.end method

.method public static eraseBitmapByMask(Landroid/graphics/Bitmap;I[IILandroid/graphics/Rect;Z)V
    .locals 9

    const/4 v4, 0x0

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    move v8, v0

    :goto_0
    if-nez p2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v5, v4

    invoke-static/range {v0 .. v8}, Lcom/android/camera/Camera_Util;->setColorAtAreaByMask(Landroid/graphics/Bitmap;I[IIIIIII)V

    :goto_1
    return-void

    :cond_0
    move v8, v4

    goto :goto_0

    :cond_1
    iget v4, p4, Landroid/graphics/Rect;->left:I

    iget v5, p4, Landroid/graphics/Rect;->top:I

    iget v6, p4, Landroid/graphics/Rect;->right:I

    iget v7, p4, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v8}, Lcom/android/camera/Camera_Util;->setColorAtAreaByMask(Landroid/graphics/Bitmap;I[IIIIIII)V

    goto :goto_1
.end method

.method public static native getRGBArray(II)[I
.end method

.method public static native getScaladoVersionID()Ljava/lang/String;
.end method

.method private static native hasSpmoInFile(Ljava/lang/String;)I
.end method

.method public static native loadImage(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
.end method

.method public static native loadImageWithSpmo(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public static native loadImageWithSpmoBase(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public static native loadImage_Partial(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
.end method

.method public static native nativeAddTimeStamp(Landroid/graphics/Bitmap;Ljava/lang/String;FFLandroid/graphics/Paint;)Landroid/graphics/Bitmap;
.end method

.method public static native panorama([Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static runThreadToAddTimeStamp(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    const-string v2, "Camera_Util"

    const-string v3, "runThreadToAddTimeStamp"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/camera/Camera_Util$1;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/Camera_Util$1;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-virtual {v2}, Lcom/android/camera/Camera_Util$1;->start()V

    return-void
.end method

.method public static native saveRawData([III)V
.end method

.method public static native setColorAtAreaByMask(Landroid/graphics/Bitmap;I[IIIIIII)V
.end method


# virtual methods
.method public Release()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/Camera_Util;->nativeRelease()V

    return-void
.end method

.method public native nativeBegin()V
.end method

.method public native nativeRelease()V
.end method
