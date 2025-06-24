.class La/a/h$d;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "StoreWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/h;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/a/h;


# direct methods
.method constructor <init>(La/a/h;)V
    .registers 2

    iput-object p1, p0, La/a/h$d;->a:La/a/h;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .registers 6

    invoke-static {}, Lnet/fdgames/ek/Settings;->q()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3d

    sget-object p1, Lnet/fdgames/ek/ExiledKingdoms;->p:Lnet/fdgames/ek/PurchaseResolver;

    invoke-virtual {p1}, Lnet/fdgames/ek/PurchaseResolver;->a()Lcom/badlogic/gdx/u/i;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/u/m/a/a;

    invoke-virtual {p1}, Lcom/badlogic/gdx/u/m/a/a;->a()Z

    move-result p1

    if-eqz p1, :cond_26

    sget-object p1, Lnet/fdgames/ek/ExiledKingdoms;->p:Lnet/fdgames/ek/PurchaseResolver;

    const-string p2, "full_ek_license"

    invoke-virtual {p1, p2}, Lnet/fdgames/ek/PurchaseResolver;->a(Ljava/lang/String;)V

    iget-object p1, p0, La/a/h$d;->a:La/a/h;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_3d

    :cond_26
    sget-boolean p1, Lnet/fdgames/ek/ExiledKingdoms;->r:Z

    if-eqz p1, :cond_2d

    const-string p1, "Couldn\'t connect to App Store. Please verify your Apple ID in Settings."

    goto :goto_2f

    :cond_2d
    const-string p1, "Couldn\'t connect to Play Store. Please check your Play Store settings and verify your account payment methods."

    :goto_2f
    new-instance p2, La/a/h$d$a;

    invoke-direct {p2, p0, p1}, La/a/h$d$a;-><init>(La/a/h$d;Ljava/lang/String;)V

    iget-object p1, p0, La/a/h$d;->a:La/a/h;

    invoke-static {p1}, La/a/h;->a(La/a/h;)Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->show(Lcom/badlogic/gdx/scenes/scene2d/Stage;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    :cond_3d
    :goto_3d
    const/4 p1, 0x1

    return p1
.end method
