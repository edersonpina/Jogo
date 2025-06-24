.class La/a/h$c;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "StoreWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/h;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
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

    iput-object p1, p0, La/a/h$c;->a:La/a/h;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .registers 4

    iget-object p1, p0, La/a/h$c;->a:La/a/h;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, La/a/h$c;->a:La/a/h;

    invoke-static {p1}, La/a/h;->c(La/a/h;)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-static {p2}, Lnet/fdgames/GameLevel/GameLevel;->b(Z)V

    iget-object p1, p0, La/a/h$c;->a:La/a/h;

    invoke-static {p1, p2}, La/a/h;->a(La/a/h;Z)Z

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
