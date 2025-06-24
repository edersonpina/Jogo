.class La/a/h$a;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
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

    iput-object p1, p0, La/a/h$a;->a:La/a/h;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 3

    sget-object p1, Lnet/fdgames/ek/ExiledKingdoms;->p:Lnet/fdgames/ek/PurchaseResolver;

    invoke-virtual {p1}, Lnet/fdgames/ek/PurchaseResolver;->b()V

    new-instance p1, La/a/h$a$a;

    const-string p2, "RESTORING_LICENSE"

    invoke-static {p2}, Lnet/fdgames/Helpers/GameString;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, La/a/h$a$a;-><init>(La/a/h$a;Ljava/lang/String;)V

    iget-object p2, p0, La/a/h$a;->a:La/a/h;

    invoke-static {p2}, La/a/h;->a(La/a/h;)Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->show(Lcom/badlogic/gdx/scenes/scene2d/Stage;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    return-void
.end method
