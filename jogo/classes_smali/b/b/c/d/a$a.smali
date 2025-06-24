.class Lb/b/c/d/a$a;
.super Lb/b/c/d/h;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/c/d/a;->b()Lb/b/c/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/b/c/d/h<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lb/b/c/d/a;


# direct methods
.method constructor <init>(Lb/b/c/d/a;)V
    .registers 2

    iput-object p1, p0, Lb/b/c/d/a$a;->d:Lb/b/c/d/a;

    invoke-direct {p0}, Lb/b/c/d/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lb/b/c/d/a$a;->d:Lb/b/c/d/a;

    invoke-virtual {v0, p1}, Lb/b/c/d/j;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected a(II)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lb/b/c/d/a$a;->d:Lb/b/c/d/a;

    iget-object v0, v0, Lb/b/c/d/j;->c:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/c/d/a$a;->d:Lb/b/c/d/a;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, v0, Lb/b/c/d/j;->c:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1
.end method

.method protected a()V
    .registers 2

    iget-object v0, p0, Lb/b/c/d/a$a;->d:Lb/b/c/d/a;

    invoke-virtual {v0}, Lb/b/c/d/j;->clear()V

    return-void
.end method

.method protected a(I)V
    .registers 3

    iget-object v0, p0, Lb/b/c/d/a$a;->d:Lb/b/c/d/a;

    invoke-virtual {v0, p1}, Lb/b/c/d/j;->c(I)Ljava/lang/Object;

    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/b/c/d/a$a;->d:Lb/b/c/d/a;

    invoke-virtual {v0, p1, p2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected b(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lb/b/c/d/a$a;->d:Lb/b/c/d/a;

    invoke-virtual {v0, p1}, Lb/b/c/d/j;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/c/d/a$a;->d:Lb/b/c/d/a;

    return-object v0
.end method

.method protected c()I
    .registers 2

    iget-object v0, p0, Lb/b/c/d/a$a;->d:Lb/b/c/d/a;

    iget v0, v0, Lb/b/c/d/j;->d:I

    return v0
.end method
