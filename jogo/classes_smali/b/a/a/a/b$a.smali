.class Lb/a/a/a/b$a;
.super Lb/a/a/a/b$b;
.source "SafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb/a/a/a/b$b<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object<",
            "TK;TV;>;",
            "Ljava/lang/Object<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lb/a/a/a/b$b;-><init>()V

    return-void
.end method
