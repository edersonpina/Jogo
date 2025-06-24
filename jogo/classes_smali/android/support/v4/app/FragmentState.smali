.class final Landroid/support/v4/app/FragmentState;
.super Ljava/lang/Object;
.source "FragmentState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Ljava/lang/String;

.field final c:I

.field final d:Z

.field final e:I

.field final f:I

.field final g:Ljava/lang/String;

.field final h:Z

.field final i:Z

.field final j:Landroid/os/Bundle;

.field final k:Z

.field l:Landroid/os/Bundle;

.field m:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v4/app/FragmentState$a;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentState$a;-><init>()V

    sput-object v0, Landroid/support/v4/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->i:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_52

    :cond_51
    const/4 v1, 0x0

    :goto_52
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentState;->k:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->b:Ljava/lang/String;

    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->c:I

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->d:Z

    iget v0, p1, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->e:I

    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->f:I

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->g:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->h:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->i:Z

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    iget-boolean p1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    iput-boolean p1, p0, Landroid/support/v4/app/FragmentState;->k:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/i;Landroid/support/v4/app/g;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/o;)Landroid/support/v4/app/Fragment;
    .registers 8

    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->m:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_65

    iget-object v0, p1, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_11
    if-eqz p2, :cond_1e

    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->b:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    invoke-virtual {p2, v0, v1, v2}, Landroid/support/v4/app/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v4/app/FragmentState;->m:Landroid/support/v4/app/Fragment;

    goto :goto_28

    :cond_1e
    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->b:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    invoke-static {v0, p2, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v4/app/FragmentState;->m:Landroid/support/v4/app/Fragment;

    :goto_28
    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/os/Bundle;

    if-eqz p2, :cond_39

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->m:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/os/Bundle;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_39
    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->m:Landroid/support/v4/app/Fragment;

    iget v0, p0, Landroid/support/v4/app/FragmentState;->c:I

    invoke-virtual {p2, v0, p3}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->m:Landroid/support/v4/app/Fragment;

    iget-boolean p3, p0, Landroid/support/v4/app/FragmentState;->d:Z

    iput-boolean p3, p2, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroid/support/v4/app/Fragment;->mRestored:Z

    iget p3, p0, Landroid/support/v4/app/FragmentState;->e:I

    iput p3, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iget p3, p0, Landroid/support/v4/app/FragmentState;->f:I

    iput p3, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    iget-object p3, p0, Landroid/support/v4/app/FragmentState;->g:Ljava/lang/String;

    iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    iget-boolean p3, p0, Landroid/support/v4/app/FragmentState;->h:Z

    iput-boolean p3, p2, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    iget-boolean p3, p0, Landroid/support/v4/app/FragmentState;->i:Z

    iput-boolean p3, p2, Landroid/support/v4/app/Fragment;->mDetached:Z

    iget-boolean p3, p0, Landroid/support/v4/app/FragmentState;->k:Z

    iput-boolean p3, p2, Landroid/support/v4/app/Fragment;->mHidden:Z

    iget-object p1, p1, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    iput-object p1, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/k;

    :cond_65
    iget-object p1, p0, Landroid/support/v4/app/FragmentState;->m:Landroid/support/v4/app/Fragment;

    iput-object p4, p1, Landroid/support/v4/app/Fragment;->mChildNonConfig:Landroid/support/v4/app/o;

    return-object p1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/support/v4/app/FragmentState;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/support/v4/app/FragmentState;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/support/v4/app/FragmentState;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/support/v4/app/FragmentState;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/app/FragmentState;->h:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/support/v4/app/FragmentState;->i:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-boolean p2, p0, Landroid/support/v4/app/FragmentState;->k:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
