.class Lcom/scalado/app/rewind/Geom;
.super Ljava/lang/Object;
.source "Geom.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertRect(Landroid/graphics/Rect;)Lcom/scalado/base/Rect;
    .locals 1

    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    invoke-static {p0, v0}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    return-object v0
.end method

.method public static getCanvas(Lcom/scalado/base/Size;Lcom/scalado/caps/screen/Screen;)Landroid/graphics/Rect;
    .locals 10

    const/4 v8, 0x0

    new-instance v1, Lcom/scalado/base/Point;

    invoke-direct {v1, v8, v8}, Lcom/scalado/base/Point;-><init>(II)V

    new-instance v2, Lcom/scalado/base/Point;

    invoke-virtual {p0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v9

    invoke-direct {v2, v8, v9}, Lcom/scalado/base/Point;-><init>(II)V

    invoke-virtual {p1, v1}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v3

    invoke-virtual {p1, v2}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v4

    invoke-virtual {v3}, Lcom/scalado/base/Point;->getX()I

    move-result v6

    invoke-virtual {v3}, Lcom/scalado/base/Point;->getY()I

    move-result v7

    invoke-virtual {v4}, Lcom/scalado/base/Point;->getX()I

    move-result v8

    invoke-virtual {v3}, Lcom/scalado/base/Point;->getX()I

    move-result v9

    sub-int v5, v8, v9

    invoke-virtual {v4}, Lcom/scalado/base/Point;->getY()I

    move-result v8

    invoke-virtual {v3}, Lcom/scalado/base/Point;->getY()I

    move-result v9

    sub-int v0, v8, v9

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v7, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v8
.end method

.method public static final rectDist2(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    sub-float v0, v2, v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float v1, v2, v3

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public static final rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V
    .locals 1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setX(I)V

    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setY(I)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setWidth(I)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    return-void
.end method

.method public static final rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getY()I

    move-result v1

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getX()I

    move-result v2

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getY()I

    move-result v3

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static final rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 4

    const-string v0, "{(%d, %d), %dx%d}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final rectToStr(Lcom/scalado/base/Rect;)Ljava/lang/String;
    .locals 4

    const-string v0, "{(%d, %d), %dx%d}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final setRect(IIIILcom/scalado/base/Rect;)V
    .locals 0

    invoke-virtual {p4, p0}, Lcom/scalado/base/Rect;->setX(I)V

    invoke-virtual {p4, p1}, Lcom/scalado/base/Rect;->setY(I)V

    invoke-virtual {p4, p2}, Lcom/scalado/base/Rect;->setWidth(I)V

    invoke-virtual {p4, p3}, Lcom/scalado/base/Rect;->setHeight(I)V

    return-void
.end method

.method public static final setRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getX()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setX(I)V

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getY()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setY(I)V

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setWidth(I)V

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    return-void
.end method

.method public static transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 7

    new-instance v2, Lcom/scalado/base/Point;

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v4

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/scalado/base/Point;-><init>(II)V

    new-instance v3, Lcom/scalado/base/Point;

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v4

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lcom/scalado/base/Point;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v1

    invoke-virtual {v0}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setX(I)V

    invoke-virtual {v0}, Lcom/scalado/base/Point;->getY()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setY(I)V

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-virtual {v0}, Lcom/scalado/base/Point;->getX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setWidth(I)V

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getY()I

    move-result v4

    invoke-virtual {v0}, Lcom/scalado/base/Point;->getY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setHeight(I)V

    return-void
.end method

.method public static transformToSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 7

    new-instance v2, Lcom/scalado/base/Point;

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v4

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/scalado/base/Point;-><init>(II)V

    new-instance v3, Lcom/scalado/base/Point;

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v4

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lcom/scalado/base/Point;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/scalado/caps/screen/Screen;->transformToSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/scalado/caps/screen/Screen;->transformToSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v1

    invoke-virtual {v0}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setX(I)V

    invoke-virtual {v0}, Lcom/scalado/base/Point;->getY()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setY(I)V

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-virtual {v0}, Lcom/scalado/base/Point;->getX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setWidth(I)V

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getY()I

    move-result v4

    invoke-virtual {v0}, Lcom/scalado/base/Point;->getY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2, v4}, Lcom/scalado/base/Rect;->setHeight(I)V

    return-void
.end method
