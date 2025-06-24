.class public La/a/f;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "LicenseTable.java"


# static fields
.field private static final e:F


# instance fields
.field private b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private d:F


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

    sput v0, La/a/f;->e:F

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 12

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object v0, p0, La/a/f;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, La/a/f;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    sget-object v1, Lnet/fdgames/assets/GameAssets;->P:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget v0, La/a/f;->e:F

    const/high16 v1, 0x40a00000  # 5.0f

    mul-float v2, v0, v1

    iput v2, p0, La/a/f;->d:F

    const/high16 v2, 0x445c0000  # 880.0f

    mul-float v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    iget v0, p0, La/a/f;->d:F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-static {}, Lnet/fdgames/ek/Settings;->f()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5a

    if-eqz p2, :cond_49

    iget-object p2, p0, La/a/f;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    const-string v2, "available_ES"

    invoke-static {v2}, Lnet/fdgames/assets/Assets;->f(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_7d

    :cond_49
    iget-object p2, p0, La/a/f;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    const-string v2, "not_available_ES"

    invoke-static {v2}, Lnet/fdgames/assets/Assets;->f(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_7d

    :cond_5a
    if-eqz p2, :cond_6d

    iget-object p2, p0, La/a/f;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    const-string v2, "available"

    invoke-static {v2}, Lnet/fdgames/assets/Assets;->f(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_7d

    :cond_6d
    iget-object p2, p0, La/a/f;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    const-string v2, "not_available"

    invoke-static {v2}, Lnet/fdgames/assets/Assets;->f(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :goto_7d
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_91

    invoke-static {}, Lnet/fdgames/ek/Settings;->q()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_91

    iget-object v2, p0, La/a/f;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_96

    :cond_91
    iget-object v2, p0, La/a/f;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_96
    iget-object v2, p0, La/a/f;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    if-ne p1, v0, :cond_a0

    const-string v2, "FULL_FEATURE_"

    goto :goto_a2

    :cond_a0
    const-string v2, "FREE_FEATURE_"

    :goto_a2
    sget v3, La/a/f;->e:F

    const/high16 v4, 0x41200000  # 10.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    :goto_a9
    const/4 v4, 0x3

    if-ge p2, v4, :cond_14d

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    invoke-static {}, Lnet/fdgames/assets/Assets;->e()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v5

    const-string v6, "default-rect-down"

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/fdgames/Helpers/GameString;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[BLUE]"

    invoke-static {v6}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, La/a/h;->m:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "[]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "{p}"

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v8, "[BLACK]"

    invoke-static {v8, v5, v7}, Ld/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lnet/fdgames/assets/GameAssets;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v6, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget v5, La/a/f;->e:F

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setFontScale(F)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    iget-object v5, p0, La/a/f;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    int-to-float v7, v3

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v5, p0, La/a/f;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    sget v5, La/a/f;->e:F

    const/high16 v7, 0x41400000  # 12.0f

    mul-float v5, v5, v7

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    sget v5, La/a/f;->e:F

    mul-float v5, v5, v7

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    sget v5, La/a/f;->e:F

    mul-float v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v4, p0, La/a/f;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const v5, 0x44034000  # 525.0f

    sget v6, La/a/f;->e:F

    mul-float v6, v6, v5

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    sget v5, La/a/f;->e:F

    mul-float v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_a9

    :cond_14d
    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    if-nez p1, :cond_162

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    const-string v2, "free_license"

    invoke-static {v2}, Lnet/fdgames/assets/Assets;->f(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :cond_162
    if-ne p1, v0, :cond_172

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    const-string v0, "full_license"

    invoke-static {v0}, Lnet/fdgames/assets/Assets;->f(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :cond_172
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    sget p2, La/a/f;->e:F

    const/high16 v0, 0x43160000  # 150.0f

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    sget p2, La/a/f;->e:F

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object p1, p0, La/a/f;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    sget p2, La/a/f;->e:F

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    sget p2, La/a/f;->e:F

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    iget p2, p0, La/a/f;->d:F

    const/high16 v0, 0x40000000  # 2.0f

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 p2, 0x41700000  # 15.0f

    sget v0, La/a/f;->e:F

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object p1, p0, La/a/f;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 p2, 0x44070000  # 540.0f

    sget v0, La/a/f;->e:F

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->center()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-void
.end method
