.class La/a/a;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "DonateWindow.java"


# instance fields
.field final synthetic a:La/a/e;


# direct methods
.method constructor <init>(La/a/e;)V
    .registers 2

    iput-object p1, p0, La/a/a;->a:La/a/e;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .registers 4

    iget-object p1, p0, La/a/a;->a:La/a/e;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, La/a/a;->a:La/a/e;

    invoke-static {p1}, La/a/e;->a(La/a/e;)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-static {p2}, Lnet/fdgames/GameLevel/GameLevel;->b(Z)V

    iget-object p1, p0, La/a/a;->a:La/a/e;

    invoke-static {p1, p2}, La/a/e;->a(La/a/e;Z)Z

    :cond_16
    invoke-static {}, Lnet/fdgames/GameWorld/GameData;->O()Lnet/fdgames/GameWorld/GameData;

    move-result-object p1

    invoke-virtual {p1}, Lnet/fdgames/GameWorld/GameData;->B()Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-static {}, Le/a/d/y;->J()Le/a/d/y;

    move-result-object p1

    if-eqz p1, :cond_2d

    invoke-static {}, Le/a/d/y;->J()Le/a/d/y;

    move-result-object p1

    invoke-virtual {p1}, Le/a/d/y;->l()V

    :cond_2d
    return-void
.end method
