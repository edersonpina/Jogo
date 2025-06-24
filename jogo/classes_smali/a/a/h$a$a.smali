.class La/a/h$a$a;
.super Le/a/d/l1;
.source "StoreWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/h$a;->changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:La/a/h$a;


# direct methods
.method constructor <init>(La/a/h$a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, La/a/h$a$a;->e:La/a/h$a;

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-direct {p0, p2, p1}, Le/a/d/l1;-><init>(Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method protected result(Ljava/lang/Object;)V
    .registers 2

    iget-object p1, p0, La/a/h$a$a;->e:La/a/h$a;

    iget-object p1, p1, La/a/h$a;->a:La/a/h;

    invoke-static {p1}, La/a/h;->b(La/a/h;)V

    return-void
.end method
