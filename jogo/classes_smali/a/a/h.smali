.class public La/a/h;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Window;
.source "StoreWindow.java"


# static fields
.field private static l:F

.field public static m:Ljava/lang/String;


# instance fields
.field private b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private c:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

.field private d:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

.field private e:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

.field private f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private g:La/a/f;

.field private h:La/a/f;

.field private i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private j:Z

.field private k:Lcom/badlogic/gdx/scenes/scene2d/Stage;


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

    sput v0, La/a/h;->l:F

    const-string v0, "$0"

    sput-object v0, La/a/h;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .registers 7

    invoke-static {}, Lnet/fdgames/assets/Assets;->e()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/d;

    const-string v4, "data/ui/logo.png"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/d;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/q/a;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/q/a;)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, La/a/h;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string v1, "EXIT"

    invoke-static {v1}, Lnet/fdgames/Helpers/GameString;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lnet/fdgames/assets/Assets;->e()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v2

    const-string v3, "menuButton"

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    iput-object v0, p0, La/a/h;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-static {}, Lnet/fdgames/assets/Assets;->e()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v1

    const-string v2, "Test"

    invoke-direct {v0, v2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    iput-object v0, p0, La/a/h;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string v1, "RESTORE_PURCHASE"

    invoke-static {v1}, Lnet/fdgames/Helpers/GameString;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lnet/fdgames/assets/Assets;->e()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    iput-object v0, p0, La/a/h;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lnet/fdgames/assets/GameAssets;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    const-string v2, "Not licensed"

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, La/a/h;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, La/a/h;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

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

    const v3, 0x3f570a3d  # 0.84f

    mul-float v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/f;

    invoke-interface {v2}, Lcom/badlogic/gdx/f;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f75c28f  # 0.96f

    mul-float v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    const v3, 0x3f99999a  # 1.2f

    mul-float v2, v2, v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b8

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/f;

    invoke-interface {v2}, Lcom/badlogic/gdx/f;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f428f5c  # 0.76f

    mul-float v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    :cond_b8
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/f;

    invoke-interface {v2}, Lcom/badlogic/gdx/f;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/f;

    invoke-interface {v3}, Lcom/badlogic/gdx/f;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const v4, 0x40333333  # 2.8f

    div-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, p0, La/a/h;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    iget-object v1, p0, La/a/h;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget v2, La/a/h;->l:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setFontScale(F)V

    iput-object p1, p0, La/a/h;->k:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->center()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object p1, p0, La/a/h;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->center()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v2, 0x43aa0000  # 340.0f

    sget v3, La/a/h;->l:F

    mul-float v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v2, 0x42ec0000  # 118.0f

    sget v3, La/a/h;->l:F

    mul-float v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v2, 0x41200000  # 10.0f

    sget v3, La/a/h;->l:F

    mul-float v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v2, 0x428c0000  # 70.0f

    sget v3, La/a/h;->l:F

    mul-float v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    sget v2, La/a/h;->l:F

    const/high16 v3, 0x41a00000  # 20.0f

    mul-float v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->center()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object p1, p0, La/a/h;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v2

    const v4, 0x3f7ae148  # 0.98f

    mul-float v2, v2, v4

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->center()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    sget v2, La/a/h;->l:F

    mul-float v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v1, 0x40a00000  # 5.0f

    sget v2, La/a/h;->l:F

    mul-float v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-direct {p0}, La/a/h;->c()V

    iget-object p1, p0, La/a/h;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v1, 0x42480000  # 50.0f

    sget v2, La/a/h;->l:F

    mul-float v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v1, 0x41700000  # 15.0f

    sget v2, La/a/h;->l:F

    mul-float v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object p1, p0, La/a/h;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->getLabel()Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p1

    sget v1, La/a/h;->l:F

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setFontScale(F)V

    iget-object p1, p0, La/a/h;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->getLabel()Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p1

    sget v1, La/a/h;->l:F

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setFontScale(F)V

    iget-object p1, p0, La/a/h;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->getLabel()Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p1

    sget v1, La/a/h;->l:F

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setFontScale(F)V

    iget-object p1, p0, La/a/h;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->LIME:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p1, p0, La/a/h;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    sget v1, La/a/h;->l:F

    const v2, 0x43898000  # 275.0f

    mul-float v1, v1, v2

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object p1, p0, La/a/h;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    new-instance v1, La/a/h$a;

    invoke-direct {v1, p0}, La/a/h$a;-><init>(La/a/h;)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object p1, p0, La/a/h;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    new-instance v1, La/a/h$b;

    invoke-direct {v1, p0}, La/a/h$b;-><init>(La/a/h;)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object p1, p0, La/a/h;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    sget v1, La/a/h;->l:F

    mul-float v1, v1, v2

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object p1, p0, La/a/h;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    sget v1, La/a/h;->l:F

    mul-float v1, v1, v2

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object p1, p0, La/a/h;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearListeners()V

    iget-object p1, p0, La/a/h;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    new-instance v1, La/a/h$c;

    invoke-direct {v1, p0}, La/a/h$c;-><init>(La/a/h;)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method static synthetic a(La/a/h;)Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .registers 1

    iget-object p0, p0, La/a/h;->k:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    return-object p0
.end method

.method static synthetic a(La/a/h;Z)Z
    .registers 2

    iput-boolean p1, p0, La/a/h;->j:Z

    return p1
.end method

.method static synthetic b(La/a/h;)V
    .registers 1

    invoke-virtual {p0}, La/a/h;->a()V

    return-void
.end method

.method private c()V
    .registers 6

    iget-object v0, p0, La/a/h;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    new-instance v0, La/a/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, La/a/f;-><init>(IZ)V

    iput-object v0, p0, La/a/h;->h:La/a/f;

    new-instance v0, La/a/f;

    invoke-static {}, Lnet/fdgames/ek/Settings;->q()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v0, v1, v2}, La/a/f;-><init>(IZ)V

    iput-object v0, p0, La/a/h;->g:La/a/f;

    iget-object v0, p0, La/a/h;->g:La/a/f;

    new-instance v1, La/a/h$d;

    invoke-direct {v1, p0}, La/a/h$d;-><init>(La/a/h;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-static {}, Lnet/fdgames/ek/Settings;->q()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v1, 0x430c0000  # 140.0f

    const/high16 v2, 0x40a00000  # 5.0f

    const/4 v3, 0x3

    if-eqz v0, :cond_6f

    iget-object v0, p0, La/a/h;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    sget v4, La/a/h;->l:F

    mul-float v4, v4, v2

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v0, p0, La/a/h;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v4, p0, La/a/h;->g:La/a/f;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v0, p0, La/a/h;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    sget v3, La/a/h;->l:F

    mul-float v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    sget v1, La/a/h;->l:F

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v0, p0, La/a/h;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, La/a/h;->h:La/a/f;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_a7

    :cond_6f
    iget-object v0, p0, La/a/h;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    sget v4, La/a/h;->l:F

    mul-float v4, v4, v1

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    sget v1, La/a/h;->l:F

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v0, p0, La/a/h;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, La/a/h;->h:La/a/f;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v0, p0, La/a/h;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    sget v1, La/a/h;->l:F

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v0, p0, La/a/h;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, La/a/h;->g:La/a/f;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :goto_a7
    return-void
.end method

.method static synthetic c(La/a/h;)Z
    .registers 1

    iget-boolean p0, p0, La/a/h;->j:Z

    return p0
.end method


# virtual methods
.method public a()V
    .registers 5

    sget-object v0, Lnet/fdgames/ek/ExiledKingdoms;->p:Lnet/fdgames/ek/PurchaseResolver;

    invoke-virtual {v0}, Lnet/fdgames/ek/PurchaseResolver;->a()Lcom/badlogic/gdx/u/i;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/u/m/a/a;

    const-string v1, "full_ek_license"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/u/m/a/a;->a(Ljava/lang/String;)Lcom/badlogic/gdx/u/d;

    move-result-object v0

    if-eqz v0, :cond_38

    sget-object v1, Lcom/badlogic/gdx/u/d;->e:Lcom/badlogic/gdx/u/d;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/u/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_38

    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/badlogic/gdx/u/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/u/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/h;->m:Ljava/lang/String;

    goto :goto_3c

    :cond_38
    :goto_38
    const-string v0, "<<ERROR!>>"

    sput-object v0, La/a/h;->m:Ljava/lang/String;

    :goto_3c
    iget-object v0, p0, La/a/h;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v1, "[DARK_GRAY]"

    invoke-static {v1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LICENSE_INFO_IOS"

    const-string v3, "[]"

    invoke-static {v2, v1, v3, v0}, Ld/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V

    iget-object v0, p0, La/a/h;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string v1, "EXIT"

    invoke-static {v1}, Lnet/fdgames/Helpers/GameString;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, La/a/h;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string v1, "RESTORE_PURCHASE"

    invoke-static {v1}, Lnet/fdgames/Helpers/GameString;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    invoke-static {}, Lnet/fdgames/ek/Settings;->q()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_73

    iget-object v0, p0, La/a/h;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setDisabled(Z)V

    goto :goto_78

    :cond_73
    iget-object v0, p0, La/a/h;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setDisabled(Z)V

    :goto_78
    iget-object v0, p0, La/a/h;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string v3, "HELP_LICENSE"

    invoke-static {v3}, Lnet/fdgames/Helpers/GameString;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    sget-boolean v0, Lnet/fdgames/ek/ExiledKingdoms;->q:Z

    if-eqz v0, :cond_8d

    iget-object v0, p0, La/a/h;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_92

    :cond_8d
    iget-object v0, p0, La/a/h;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_92
    invoke-direct {p0}, La/a/h;->c()V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/h;->j:Z

    return-void
.end method
