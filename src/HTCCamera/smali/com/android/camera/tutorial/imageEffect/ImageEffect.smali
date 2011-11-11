.class public Lcom/android/camera/tutorial/imageEffect/ImageEffect;
.super Ljava/lang/Object;
.source "ImageEffect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addReflection(Landroid/graphics/Bitmap;IIIF)Landroid/graphics/Bitmap;
    .locals 19

    const-class v18, Lcom/android/camera/tutorial/imageEffect/ImageEffect;

    monitor-enter v18

    if-nez p0, :cond_0

    const/16 p0, 0x0

    :goto_0
    monitor-exit v18

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move/from16 v16, p2

    move/from16 v12, p3

    move/from16 v17, p4

    move v0, v12

    int-to-float v0, v0

    move/from16 p2, v0

    div-float v14, v17, p2

    add-int p2, v13, v12

    add-int p2, p2, v16

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v0, v8

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    new-instance p2, Landroid/graphics/Canvas;

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    const/16 p1, 0x0

    const/16 p3, 0x0

    new-instance p4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    move-object/from16 v0, p4

    move v1, v5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    mul-int p1, v8, v12

    move/from16 v0, p1

    new-array v0, v0, [I

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    sub-int v10, v13, v12

    move-object/from16 v5, p0

    move v11, v8

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int p1, v8, v12

    move/from16 v0, p1

    new-array v0, v0, [I

    move-object v5, v0

    const/16 p1, 0x0

    move/from16 p3, p1

    :goto_1
    move/from16 v0, p3

    move v1, v12

    if-ge v0, v1, :cond_2

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 p1, v0

    mul-float p1, p1, v14

    sub-float p1, v17, p1

    move/from16 v0, p1

    float-to-int v0, v0

    move/from16 p1, v0

    const/16 p4, 0x0

    :goto_2
    move/from16 v0, p4

    move v1, v8

    if-ge v0, v1, :cond_1

    sub-int v7, v12, p3

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    mul-int/2addr v7, v8

    add-int v7, v7, p4

    aget v7, v6, v7

    mul-int v9, p3, v8

    add-int v9, v9, p4

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v10

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v11

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    move/from16 v0, p1

    move v1, v10

    move v2, v11

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v9

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p3, 0x1

    move/from16 p3, p1

    goto :goto_1

    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v0, v5

    move v1, v8

    move v2, v12

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 p3, 0x0

    add-int p4, v13, v16

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 p4, v0

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    const/16 p0, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x0

    move-object/from16 p0, v15

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v18

    throw p0
.end method

.method public static declared-synchronized createReflection(Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;
    .locals 10

    const-class v9, Lcom/android/camera/tutorial/imageEffect/ImageEffect;

    monitor-enter v9

    if-eqz p0, :cond_0

    if-lez p2, :cond_0

    float-to-double v0, p3

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v9

    return-object p0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    move v7, p2

    move v8, p3

    int-to-float p2, v7

    div-float p3, v8, p2

    mul-int p2, v3, v7

    new-array v1, p2, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    sub-int v5, p1, v7

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int p0, v3, v7

    new-array v0, p0, [I

    const/4 p0, 0x0

    move p1, p0

    :goto_1
    if-ge p1, v7, :cond_3

    int-to-float p0, p1

    mul-float/2addr p0, p3

    sub-float p0, v8, p0

    float-to-int p0, p0

    const/4 p2, 0x0

    :goto_2
    if-ge p2, v3, :cond_2

    sub-int v2, v7, p1

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    mul-int/2addr v2, v3

    add-int/2addr v2, p2

    aget v2, v1, v2

    mul-int v4, p1, v3

    add-int/2addr v4, p2

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p0, v5, v6, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p1, 0x1

    move p1, p0

    goto :goto_1

    :cond_3
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v7, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v9

    throw p0
.end method
