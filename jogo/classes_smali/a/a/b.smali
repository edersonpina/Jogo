.class La/a/b;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "DonateWindow.java"


# instance fields
.field final synthetic a:La/a/e;


# direct methods
.method constructor <init>(La/a/e;)V
    .registers 2

    iput-object p1, p0, La/a/b;->a:La/a/e;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .registers 6

    sget-boolean p1, Lnet/fdgames/ek/ExiledKingdoms;->r:Z

    if-eqz p1, :cond_c

    sget-object p1, Lnet/fdgames/ek/ExiledKingdoms;->p:Lnet/fdgames/ek/PurchaseResolver;

    const-string p2, "ek_donation_con_0"

    invoke-virtual {p1, p2}, Lnet/fdgames/ek/PurchaseResolver;->a(Ljava/lang/String;)V

    goto :goto_13

    :cond_c
    sget-object p1, Lnet/fdgames/ek/ExiledKingdoms;->p:Lnet/fdgames/ek/PurchaseResolver;

    const-string p2, "ek_donation_con_1"

    invoke-virtual {p1, p2}, Lnet/fdgames/ek/PurchaseResolver;->a(Ljava/lang/String;)V

    :goto_13
    iget-object p1, p0, La/a/b;->a:La/a/e;

    invoke-virtual {p1}, La/a/e;->a()V

    const/4 p1, 0x1

    return p1
.end method
