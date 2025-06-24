.class Lb/b/c/a/h/c$b;
.super Lb/b/c/a/h/c$a;
.source "DrawableWrapperApi14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/c/a/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Lb/b/c/a/h/c$a;Landroid/content/res/Resources;)V
    .registers 3

    invoke-direct {p0, p1}, Lb/b/c/a/h/c$a;-><init>(Lb/b/c/a/h/c$a;)V

    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Lb/b/c/a/h/c;

    invoke-direct {v0, p0, p1}, Lb/b/c/a/h/c;-><init>(Lb/b/c/a/h/c$a;Landroid/content/res/Resources;)V

    return-object v0
.end method
