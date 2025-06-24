.class La/a/h$b;
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


# direct methods
.method constructor <init>(La/a/h;)V
    .registers 2

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 3

    sget-boolean p1, Lnet/fdgames/ek/ExiledKingdoms;->q:Z

    if-eqz p1, :cond_b

    sget-object p1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/l;

    const-string p2, "https://www.exiledkingdoms.com/support/support_android.html"

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/l;->openURI(Ljava/lang/String;)Z

    :cond_b
    return-void
.end method
