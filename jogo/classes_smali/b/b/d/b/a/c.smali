.class final Lb/b/d/b/a/c;
.super Ljava/lang/Object;
.source "GrowingArrayUtils.java"


# direct methods
.method public static a(I)I
    .registers 2

    const/4 v0, 0x4

    if-gt p0, v0, :cond_6

    const/16 p0, 0x8

    goto :goto_8

    :cond_6
    mul-int/lit8 p0, p0, 0x2

    :goto_8
    return p0
.end method
