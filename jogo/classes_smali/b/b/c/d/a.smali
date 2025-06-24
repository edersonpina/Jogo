.class public Lb/b/c/d/a;
.super Lb/b/c/d/j;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb/b/c/d/j<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field i:Lb/b/c/d/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/c/d/h<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/b/c/d/j;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/c/d/j;-><init>(I)V

    return-void
.end method

.method private b()Lb/b/c/d/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/b/c/d/h<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/c/d/a;->i:Lb/b/c/d/h;

    if-nez v0, :cond_b

    new-instance v0, Lb/b/c/d/a$a;

    invoke-direct {v0, p0}, Lb/b/c/d/a$a;-><init>(Lb/b/c/d/a;)V

    iput-object v0, p0, Lb/b/c/d/a;->i:Lb/b/c/d/h;

    :cond_b
    iget-object v0, p0, Lb/b/c/d/a;->i:Lb/b/c/d/h;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lb/b/c/d/h;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-direct {p0}, Lb/b/c/d/a;->b()Lb/b/c/d/h;

    move-result-object v0

    iget-object v1, v0, Lb/b/c/d/h;->a:Lb/b/c/d/h$b;

    if-nez v1, :cond_f

    new-instance v1, Lb/b/c/d/h$b;

    invoke-direct {v1, v0}, Lb/b/c/d/h$b;-><init>(Lb/b/c/d/h;)V

    iput-object v1, v0, Lb/b/c/d/h;->a:Lb/b/c/d/h$b;

    :cond_f
    iget-object v0, v0, Lb/b/c/d/h;->a:Lb/b/c/d/h$b;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-direct {p0}, Lb/b/c/d/a;->b()Lb/b/c/d/h;

    move-result-object v0

    iget-object v1, v0, Lb/b/c/d/h;->b:Lb/b/c/d/h$c;

    if-nez v1, :cond_f

    new-instance v1, Lb/b/c/d/h$c;

    invoke-direct {v1, v0}, Lb/b/c/d/h$c;-><init>(Lb/b/c/d/h;)V

    iput-object v1, v0, Lb/b/c/d/h;->b:Lb/b/c/d/h$c;

    :cond_f
    iget-object v0, v0, Lb/b/c/d/h;->b:Lb/b/c/d/h$c;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    iget v0, p0, Lb/b/c/d/j;->d:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lb/b/c/d/j;->a(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_2a
    return-void
.end method

.method public values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Lb/b/c/d/a;->b()Lb/b/c/d/h;

    move-result-object v0

    iget-object v1, v0, Lb/b/c/d/h;->c:Lb/b/c/d/h$e;

    if-nez v1, :cond_f

    new-instance v1, Lb/b/c/d/h$e;

    invoke-direct {v1, v0}, Lb/b/c/d/h$e;-><init>(Lb/b/c/d/h;)V

    iput-object v1, v0, Lb/b/c/d/h;->c:Lb/b/c/d/h$e;

    :cond_f
    iget-object v0, v0, Lb/b/c/d/h;->c:Lb/b/c/d/h$e;

    return-object v0
.end method
