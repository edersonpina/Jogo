.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:[I

.field final c:I

.field final d:I

.field final e:Ljava/lang/String;

.field final f:I

.field final g:I

.field final h:Ljava/lang/CharSequence;

.field final i:I

.field final j:Ljava/lang/CharSequence;

.field final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v4/app/BackStackState$a;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackState$a;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->b:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->g:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->i:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->j:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_55

    const/4 p1, 0x1

    goto :goto_56

    :cond_55
    const/4 p1, 0x0

    :goto_56
    iput-boolean p1, p0, Landroid/support/v4/app/BackStackState;->m:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/b;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/app/BackStackState;->b:[I

    iget-boolean v1, p1, Landroid/support/v4/app/b;->i:Z

    if-eqz v1, :cond_7d

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_15
    if-ge v1, v0, :cond_50

    iget-object v3, p1, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/b$a;

    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->b:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Landroid/support/v4/app/b$a;->a:I

    aput v6, v4, v2

    add-int/lit8 v2, v5, 0x1

    iget-object v6, v3, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_30

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    goto :goto_31

    :cond_30
    const/4 v6, -0x1

    :goto_31
    aput v6, v4, v5

    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->b:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Landroid/support/v4/app/b$a;->c:I

    aput v6, v4, v2

    add-int/lit8 v2, v5, 0x1

    iget v6, v3, Landroid/support/v4/app/b$a;->d:I

    aput v6, v4, v5

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Landroid/support/v4/app/b$a;->e:I

    aput v6, v4, v2

    add-int/lit8 v2, v5, 0x1

    iget v3, v3, Landroid/support/v4/app/b$a;->f:I

    aput v3, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_50
    iget v0, p1, Landroid/support/v4/app/b;->g:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    iget v0, p1, Landroid/support/v4/app/b;->h:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->d:I

    iget-object v0, p1, Landroid/support/v4/app/b;->j:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->e:Ljava/lang/String;

    iget v0, p1, Landroid/support/v4/app/b;->l:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    iget v0, p1, Landroid/support/v4/app/b;->m:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->g:I

    iget-object v0, p1, Landroid/support/v4/app/b;->n:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->h:Ljava/lang/CharSequence;

    iget v0, p1, Landroid/support/v4/app/b;->o:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->i:I

    iget-object v0, p1, Landroid/support/v4/app/b;->p:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->j:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/support/v4/app/b;->q:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->k:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/support/v4/app/b;->r:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->l:Ljava/util/ArrayList;

    iget-boolean p1, p1, Landroid/support/v4/app/b;->s:Z

    iput-boolean p1, p0, Landroid/support/v4/app/BackStackState;->m:Z

    return-void

    :cond_7d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_86

    :goto_85
    throw p1

    :goto_86
    goto :goto_85
.end method


# virtual methods
.method public a(Landroid/support/v4/app/k;)Landroid/support/v4/app/b;
    .registers 7

    new-instance v0, Landroid/support/v4/app/b;

    invoke-direct {v0, p1}, Landroid/support/v4/app/b;-><init>(Landroid/support/v4/app/k;)V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->b:[I

    array-length v2, v2

    if-ge v1, v2, :cond_5a

    new-instance v2, Landroid/support/v4/app/b$a;

    invoke-direct {v2}, Landroid/support/v4/app/b$a;-><init>()V

    iget-object v3, p0, Landroid/support/v4/app/BackStackState;->b:[I

    add-int/lit8 v4, v1, 0x1

    aget v1, v3, v1

    iput v1, v2, Landroid/support/v4/app/b$a;->a:I

    add-int/lit8 v1, v4, 0x1

    aget v3, v3, v4

    if-ltz v3, :cond_29

    iget-object v4, p1, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    iput-object v3, v2, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    goto :goto_2c

    :cond_29
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    :goto_2c
    iget-object v3, p0, Landroid/support/v4/app/BackStackState;->b:[I

    add-int/lit8 v4, v1, 0x1

    aget v1, v3, v1

    iput v1, v2, Landroid/support/v4/app/b$a;->c:I

    add-int/lit8 v1, v4, 0x1

    aget v4, v3, v4

    iput v4, v2, Landroid/support/v4/app/b$a;->d:I

    add-int/lit8 v4, v1, 0x1

    aget v1, v3, v1

    iput v1, v2, Landroid/support/v4/app/b$a;->e:I

    add-int/lit8 v1, v4, 0x1

    aget v3, v3, v4

    iput v3, v2, Landroid/support/v4/app/b$a;->f:I

    iget v3, v2, Landroid/support/v4/app/b$a;->c:I

    iput v3, v0, Landroid/support/v4/app/b;->c:I

    iget v3, v2, Landroid/support/v4/app/b$a;->d:I

    iput v3, v0, Landroid/support/v4/app/b;->d:I

    iget v3, v2, Landroid/support/v4/app/b$a;->e:I

    iput v3, v0, Landroid/support/v4/app/b;->e:I

    iget v3, v2, Landroid/support/v4/app/b$a;->f:I

    iput v3, v0, Landroid/support/v4/app/b;->f:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/b$a;)V

    goto :goto_6

    :cond_5a
    iget p1, p0, Landroid/support/v4/app/BackStackState;->c:I

    iput p1, v0, Landroid/support/v4/app/b;->g:I

    iget p1, p0, Landroid/support/v4/app/BackStackState;->d:I

    iput p1, v0, Landroid/support/v4/app/b;->h:I

    iget-object p1, p0, Landroid/support/v4/app/BackStackState;->e:Ljava/lang/String;

    iput-object p1, v0, Landroid/support/v4/app/b;->j:Ljava/lang/String;

    iget p1, p0, Landroid/support/v4/app/BackStackState;->f:I

    iput p1, v0, Landroid/support/v4/app/b;->l:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v4/app/b;->i:Z

    iget v1, p0, Landroid/support/v4/app/BackStackState;->g:I

    iput v1, v0, Landroid/support/v4/app/b;->m:I

    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->h:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/support/v4/app/b;->n:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/support/v4/app/BackStackState;->i:I

    iput v1, v0, Landroid/support/v4/app/b;->o:I

    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->j:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/support/v4/app/b;->p:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->k:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/support/v4/app/b;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->l:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/support/v4/app/b;->r:Ljava/util/ArrayList;

    iget-boolean v1, p0, Landroid/support/v4/app/BackStackState;->m:Z

    iput-boolean v1, v0, Landroid/support/v4/app/b;->s:Z

    invoke-virtual {v0, p1}, Landroid/support/v4/app/b;->a(I)V

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->b:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Landroid/support/v4/app/BackStackState;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/support/v4/app/BackStackState;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/support/v4/app/BackStackState;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/support/v4/app/BackStackState;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->h:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget p2, p0, Landroid/support/v4/app/BackStackState;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->j:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p2, p0, Landroid/support/v4/app/BackStackState;->m:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
