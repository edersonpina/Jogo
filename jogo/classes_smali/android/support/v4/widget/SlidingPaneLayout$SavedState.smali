.class Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
.super Landroid/support/v4/view/AbsSavedState;
.source "SlidingPaneLayout.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/widget/SlidingPaneLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState$a;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState$a;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->d:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
