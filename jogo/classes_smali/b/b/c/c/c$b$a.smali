.class Lb/b/c/c/c$b$a;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/c/c/c$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lb/b/c/c/c$b;


# direct methods
.method constructor <init>(Lb/b/c/c/c$b;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lb/b/c/c/c$b$a;->c:Lb/b/c/c/c$b;

    iput-object p2, p0, Lb/b/c/c/c$b$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lb/b/c/c/c$b$a;->c:Lb/b/c/c/c$b;

    iget-object v0, v0, Lb/b/c/c/c$b;->d:Lb/b/c/c/c$d;

    iget-object v1, p0, Lb/b/c/c/c$b$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lb/b/c/c/c$d;->a(Ljava/lang/Object;)V

    return-void
.end method
