.class public La/a/e;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Window;
.source "DonateWindow.java"


# static fields
.field private static l:F


# instance fields
.field private b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private c:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

.field private d:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private e:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private f:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/f;

    invoke-interface {v0}, Lcom/badlogic/gdx/f;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44340000  # 720.0f

    div-float/2addr v0, v1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/f;

    invoke-interface {v1}, Lcom/badlogic/gdx/f;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44a00000  # 1280.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, La/a/e;->l:F

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    invoke-static {}, Lnet/fdgames/assets/Assets;->e()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string v1, "EXIT"

    invoke-static {v1}, Lnet/fdgames/Helpers/GameString;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lnet/fdgames/assets/Assets;->e()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v2

    const-string v3, "menuButton"

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    iput-object v0, p0, La/a/e;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const-string v1, "donate1"

    invoke-static {v1}, Lnet/fdgames/assets/Assets;->f(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, La/a/e;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const-string v1, "donate2"

    invoke-static {v1}, Lnet/fdgames/assets/Assets;->f(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, La/a/e;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const-string v1, "donate3"

    invoke-static {v1}, Lnet/fdgames/assets/Assets;->f(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, La/a/e;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {}, Lnet/fdgames/assets/Assets;->e()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v1

    const-string v2, "menuLabelStrongStyle"

    const-string v3, "USD 1"

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    iput-object v0, p0, La/a/e;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {}, Lnet/fdgames/assets/Assets;->e()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v1

    const-string v3, "USD 2.5"

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    iput-object v0, p0, La/a/e;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {}, Lnet/fdgames/assets/Assets;->e()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v1

    const-string v3, "USD 5"

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    iput-object v0, p0, La/a/e;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lnet/fdgames/assets/GameAssets;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    const-string v2, "Not licensed"

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, La/a/e;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {}, Lnet/fdgames/assets/Assets;->e()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v0

    const-string v1, "windowbg"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setMovable(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setModal(Z)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/f;

    invoke-interface {v2}, Lcom/badlogic/gdx/f;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f266666  # 0.65f

    mul-float v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/f;

    invoke-interface {v2}, Lcom/badlogic/gdx/f;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f1c28f6  # 0.61f

    mul-float v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/f;

    invoke-interface {v2}, Lcom/badlogic/gdx/f;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/f;

    invoke-interface {v4}, Lcom/badlogic/gdx/f;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    const v5, 0x40333333  # 2.8f

    div-float/2addr v4, v5

    invoke-virtual {p0, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, p0, La/a/e;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    iget-object v2, p0, La/a/e;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget v4, La/a/e;->l:F

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setFontScale(F)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const-string v4, "EK"

    invoke-static {v4}, Lnet/fdgames/assets/Assets;->f(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v2, p0, La/a/e;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->center()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    sget v5, La/a/e;->l:F

    const/high16 v6, 0x41400000  # 12.0f

    mul-float v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v2, p0, La/a/e;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->center()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    sget v5, La/a/e;->l:F

    const/high16 v7, 0x42c00000  # 96.0f

    mul-float v5, v5, v7

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    sget v5, La/a/e;->l:F

    mul-float v5, v5, v7

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    sget v5, La/a/e;->l:F

    const/high16 v7, 0x41200000  # 10.0f

    mul-float v5, v5, v7

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    sget v5, La/a/e;->l:F

    const/high16 v7, 0x428c0000  # 70.0f

    mul-float v5, v5, v7

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v2, p0, La/a/e;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v1, p0, La/a/e;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v2

    const v5, 0x3f70a3d7  # 0.94f

    mul-float v2, v2, v5

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->center()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    sget v2, La/a/e;->l:F

    mul-float v2, v2, v6

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    sget v2, La/a/e;->l:F

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    sget v2, La/a/e;->l:F

    const/high16 v3, 0x41b00000  # 22.0f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v1, p0, La/a/e;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    sget v2, La/a/e;->l:F

    const/high16 v3, 0x42900000  # 72.0f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    sget v2, La/a/e;->l:F

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    sget v2, La/a/e;->l:F

    const/high16 v5, 0x42f00000  # 120.0f

    mul-float v2, v2, v5

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v1, p0, La/a/e;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    sget v2, La/a/e;->l:F

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    sget v2, La/a/e;->l:F

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v1, p0, La/a/e;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    sget v2, La/a/e;->l:F

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    sget v2, La/a/e;->l:F

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    sget v2, La/a/e;->l:F

    mul-float v2, v2, v5

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v1, p0, La/a/e;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    sget v2, La/a/e;->l:F

    mul-float v2, v2, v5

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v1, p0, La/a/e;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v1, p0, La/a/e;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    sget v2, La/a/e;->l:F

    mul-float v2, v2, v5

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v1, p0, La/a/e;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget v2, La/a/e;->l:F

    const v3, 0x3faa3d71  # 1.33f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setFontScale(F)V

    iget-object v1, p0, La/a/e;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget v2, La/a/e;->l:F

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setFontScale(F)V

    iget-object v1, p0, La/a/e;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget v2, La/a/e;->l:F

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setFontScale(F)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    sget v2, La/a/e;->l:F

    const/high16 v3, 0x42480000  # 50.0f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    sget v2, La/a/e;->l:F

    mul-float v2, v2, v6

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v1, p0, La/a/e;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->getLabel()Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    sget v2, La/a/e;->l:F

    const v3, 0x3f666666  # 0.9f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setFontScale(F)V

    iget-object v1, p0, La/a/e;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    sget v2, La/a/e;->l:F

    const/high16 v3, 0x43700000  # 240.0f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v1, p0, La/a/e;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearListeners()V

    iget-object v1, p0, La/a/e;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    new-instance v2, La/a/a;

    invoke-direct {v2, p0}, La/a/a;-><init>(La/a/e;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v1, p0, La/a/e;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v2, La/a/b;

    invoke-direct {v2, p0}, La/a/b;-><init>(La/a/e;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v1, p0, La/a/e;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v2, La/a/c;

    invoke-direct {v2, p0}, La/a/c;-><init>(La/a/e;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v1, p0, La/a/e;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v2, La/a/d;

    invoke-direct {v2, p0}, La/a/d;-><init>(La/a/e;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method static synthetic a(La/a/e;)Z
    .registers 1

    iget-boolean p0, p0, La/a/e;->k:Z

    return p0
.end method

.method static synthetic a(La/a/e;Z)Z
    .registers 2

    iput-boolean p1, p0, La/a/e;->k:Z

    return p1
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    const/4 v0, 0x1

    sput-boolean v0, Lnet/fdgames/ek/ExiledKingdoms;->k:Z

    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, La/a/e;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v1, "[BLACK]"

    invoke-static {v1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DONATE_TEXT"

    invoke-static {v2}, Lnet/fdgames/Helpers/GameString;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "don1"

    invoke-static {v0}, Lnet/fdgames/ek/Settings;->a(Ljava/lang/String;)I

    const-string v0, "don2"

    invoke-static {v0}, Lnet/fdgames/ek/Settings;->a(Ljava/lang/String;)I

    const-string v0, "don3"

    invoke-static {v0}, Lnet/fdgames/ek/Settings;->a(Ljava/lang/String;)I

    iget-object v0, p0, La/a/e;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string v1, "EXIT"

    invoke-static {v1}, Lnet/fdgames/Helpers/GameString;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method
