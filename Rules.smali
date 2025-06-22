.class public Lnet/fdgames/Rules/Rules;
.super Ljava/lang/Object;
.source "Rules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fdgames/Rules/Rules$CharacterClass;,
        Lnet/fdgames/Rules/Rules$CharacterRace;
    }
.end annotation


# static fields
.field public static a:[Lnet/fdgames/Rules/Item;

.field private static b:[Lnet/fdgames/Rules/Spawn;

.field private static c:[Lnet/fdgames/Helpers/GameText;

.field private static d:[Lnet/fdgames/Helpers/GameText;

.field private static e:[Lnet/fdgames/Helpers/GameText;

.field public static f:[I

.field private static g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/fdgames/Rules/LootItem;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/fdgames/Rules/WeaponStats;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/fdgames/Rules/RewardTable;",
            ">;"
        }
    .end annotation
.end field

.field public static j:Lnet/fdgames/Rules/TrapData;

.field public static k:Lnet/fdgames/Rules/MapEffectData;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 2

    const/16 v0, 0x64

    if-gt p0, v0, :cond_9

    sget-object v0, Lnet/fdgames/Rules/Rules;->f:[I

    aget p0, v0, p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static a(ILnet/fdgames/GameEntities/CharacterSheet/CharacterSheet;)Ljava/lang/Boolean;
    .registers 6

    invoke-static {p0}, Lnet/fdgames/Rules/Rules;->e(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v0, :cond_10

    return-object v1

    :cond_10
    invoke-static {p0}, Lnet/fdgames/Rules/Rules;->c(I)Lnet/fdgames/Rules/Item;

    move-result-object v0

    iget-object v0, v0, Lnet/fdgames/Rules/Item;->classes:Lnet/fdgames/Rules/ClassRestriction;

    invoke-virtual {p1}, Lnet/fdgames/GameEntities/CharacterSheet/CharacterSheet;->n()Lnet/fdgames/Rules/Rules$CharacterClass;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/fdgames/Rules/ClassRestriction;->a(Lnet/fdgames/Rules/Rules$CharacterClass;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2a

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2a
    invoke-static {p0}, Lnet/fdgames/Rules/Rules;->c(I)Lnet/fdgames/Rules/Item;

    move-result-object p0

    invoke-virtual {p1}, Lnet/fdgames/GameEntities/CharacterSheet/CharacterSheet;->n()Lnet/fdgames/Rules/Rules$CharacterClass;

    move-result-object v0

    sget-object v3, Lnet/fdgames/Rules/Rules$CharacterClass;->e:Lnet/fdgames/Rules/Rules$CharacterClass;

    if-ne v0, v3, :cond_6c

    iget-object v0, p0, Lnet/fdgames/Rules/Item;->type:Lnet/fdgames/Rules/Item$ItemType;

    sget-object v3, Lnet/fdgames/Rules/Item$ItemType;->c:Lnet/fdgames/Rules/Item$ItemType;

    if-ne v0, v3, :cond_6c

    iget-object v0, p0, Lnet/fdgames/Rules/Item;->weaponStats:Lnet/fdgames/Rules/WeaponStats;

    iget-boolean v0, v0, Lnet/fdgames/Rules/WeaponStats;->ranged:Z

    if-eqz v0, :cond_43

    goto :goto_6c

    :cond_43
    iget-object v0, p1, Lnet/fdgames/GameEntities/CharacterSheet/CharacterSheet;->skillSet:Lnet/fdgames/GameEntities/Helpers/SkillSet;

    const-string v3, "vampiric_blade"

    invoke-virtual {v0, v3}, Lnet/fdgames/GameEntities/Helpers/SkillSet;->c(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_58

    invoke-virtual {p0}, Lnet/fdgames/Rules/Item;->i()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_6c

    :cond_58
    iget-object p1, p1, Lnet/fdgames/GameEntities/CharacterSheet/CharacterSheet;->skillSet:Lnet/fdgames/GameEntities/Helpers/SkillSet;

    const-string v0, "arcane_blade"

    invoke-virtual {p1, v0}, Lnet/fdgames/GameEntities/Helpers/SkillSet;->c(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_6c

    invoke-virtual {p0}, Lnet/fdgames/Rules/Item;->j()Z

    move-result p0

    if-eqz p0, :cond_6c

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_6c
    :goto_6c
    return-object v1
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    sget-object v0, Lnet/fdgames/Rules/Rules;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fdgames/Rules/RewardTable;

    iget-object v2, v1, Lnet/fdgames/Rules/RewardTable;->id:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, p1}, Lnet/fdgames/Rules/RewardTable;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lnet/fdgames/Rules/Rules$CharacterClass;
    .registers 2

    const-string v0, "warrior"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lnet/fdgames/Rules/Rules$CharacterClass;->b:Lnet/fdgames/Rules/Rules$CharacterClass;

    return-object p0

    :cond_b
    const-string v0, "wizard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p0, Lnet/fdgames/Rules/Rules$CharacterClass;->e:Lnet/fdgames/Rules/Rules$CharacterClass;

    return-object p0

    :cond_16
    const-string v0, "mage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object p0, Lnet/fdgames/Rules/Rules$CharacterClass;->e:Lnet/fdgames/Rules/Rules$CharacterClass;

    return-object p0

    :cond_21
    const-string v0, "priest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object p0, Lnet/fdgames/Rules/Rules$CharacterClass;->d:Lnet/fdgames/Rules/Rules$CharacterClass;

    return-object p0

    :cond_2c
    const-string v0, "cleric"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object p0, Lnet/fdgames/Rules/Rules$CharacterClass;->d:Lnet/fdgames/Rules/Rules$CharacterClass;

    return-object p0

    :cond_37
    const-string v0, "rogue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    sget-object p0, Lnet/fdgames/Rules/Rules$CharacterClass;->c:Lnet/fdgames/Rules/Rules$CharacterClass;

    return-object p0

    :cond_42
    sget-object p0, Lnet/fdgames/Rules/Rules$CharacterClass;->f:Lnet/fdgames/Rules/Rules$CharacterClass;

    return-object p0
.end method

.method public static a()V
    .registers 23

    const-string v0, "ExiledKingdoms.Rules.Load() -        >Subtask 1/12: loading skills...."

    invoke-static {v0}, Le/a/e/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lnet/fdgames/Rules/Skills;->b()V

    const-string v0, "ExiledKingdoms.Rules.Load() -        >Subtask 2/12: loading plants...."

    invoke-static {v0}, Le/a/e/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lnet/fdgames/Rules/Plants;->a()V

    const-string v0, "ExiledKingdoms.Rules.Load() -        >Subtask 3/12: loading levels...."

    invoke-static {v0}, Le/a/e/b;->a(Ljava/lang/String;)V

    const/16 v0, 0x3B7

    new-array v0, v0, [I

    sput-object v0, Lnet/fdgames/Rules/Rules;->f:[I

    sget-object v0, Lnet/fdgames/Rules/Rules;->f:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v3, 0x2

    const/16 v4, 0x12c

    aput v4, v0, v3

    const/16 v4, 0x3e8

    const/4 v5, 0x3

    aput v4, v0, v5

    const/16 v4, 0xbb8

    const/4 v6, 0x4

    aput v4, v0, v6

    const/16 v4, 0x1770

    const/4 v7, 0x5

    aput v4, v0, v7

    const/4 v4, 0x6

    const/16 v8, 0x2af8

    aput v8, v0, v4

    const/4 v4, 0x7

    const/16 v8, 0x4650

    aput v8, v0, v4

    const/16 v4, 0x8

    const/16 v8, 0x6978

    aput v8, v0, v4

    const/16 v4, 0x9

    const v8, 0x9470

    aput v8, v0, v4

    const/16 v4, 0xa

    const v8, 0xc350

    aput v8, v0, v4

    const/16 v4, 0xb

    const v8, 0xfa00

    aput v8, v0, v4

    const/16 v4, 0xc

    const v8, 0x13880

    aput v8, v0, v4

    const/16 v4, 0xd

    const v8, 0x186a0

    aput v8, v0, v4

    const/16 v4, 0xe

    const v8, 0x1e848

    aput v8, v0, v4

    const/16 v4, 0xf

    const v8, 0x27100

    aput v8, v0, v4

    const/16 v8, 0x10

    const v9, 0x30d40

    aput v9, v0, v8

    const/16 v9, 0x11

    const v10, 0x3d090

    aput v10, v0, v9

    const/16 v9, 0x12

    const v10, 0x4baf0

    aput v10, v0, v9

    const/16 v9, 0x13

    const v10, 0x5cc60

    aput v10, v0, v9

    const/16 v9, 0x14

    const v10, 0x704e0

    aput v10, v0, v9

    const/16 v9, 0x15

    const v10, 0x88b80

    aput v10, v0, v9

    const/16 v9, 0x16

    const v10, 0xaae60

    aput v10, v0, v9

    const v9, 0xf4240

    const/16 v10, 0x17

    aput v9, v0, v10

    const/16 v10, 0x18

    const v11, 0x16e360

    aput v11, v0, v10

    const/16 v10, 0x19

    const v11, 0x249f00

    aput v11, v0, v10

    const/16 v0, 0x1a

    :goto_c0
    const/16 v10, 0x64

    if-gt v0, v10, :cond_d0

    sget-object v10, Lnet/fdgames/Rules/Rules;->f:[I

    add-int/lit8 v11, v0, -0x1

    aget v11, v10, v11

    add-int/2addr v11, v9

    aput v11, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c0

    :cond_d0
    const-string v0, "ExiledKingdoms.Rules.Load() -        >Subtask 4/12: loading weapons...."

    invoke-static {v0}, Le/a/e/b;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/fdgames/Rules/Rules;->h:Ljava/util/ArrayList;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/d;

    const-string v9, "data/rules/weapons.txt"

    const-string v10, "\n"

    invoke-static {v0, v9, v10}, Ld/a/a/a/a;->a(Lcom/badlogic/gdx/d;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x1

    :goto_e7
    array-length v11, v0

    const-string v12, "\r"

    const-string v13, ""

    if-ge v9, v11, :cond_10d

    aget-object v11, v0, v9

    invoke-virtual {v11, v10, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v9

    aget-object v11, v0, v9

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v9

    new-instance v11, Lnet/fdgames/Rules/WeaponStats;

    aget-object v12, v0, v9

    invoke-direct {v11, v12}, Lnet/fdgames/Rules/WeaponStats;-><init>(Ljava/lang/String;)V

    sget-object v12, Lnet/fdgames/Rules/Rules;->h:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_e7

    :cond_10d
    const-string v0, "ExiledKingdoms.Rules.Load() -        >Subtask 5/12: loading items text...."

    invoke-static {v0}, Le/a/e/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/d;

    const-string v9, "data/rules/items_text.txt"

    invoke-interface {v0, v9}, Lcom/badlogic/gdx/d;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/q/a;

    move-result-object v0

    const-string v9, "UTF-8"

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/q/a;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "\\r+"

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v9, v0

    sub-int/2addr v9, v2

    new-array v9, v9, [Lnet/fdgames/Helpers/GameText;

    sput-object v9, Lnet/fdgames/Rules/Rules;->d:[Lnet/fdgames/Helpers/GameText;

    const/4 v9, 0x1

    :goto_131
    array-length v11, v0

    if-ge v9, v11, :cond_145

    sget-object v11, Lnet/fdgames/Rules/Rules;->d:[Lnet/fdgames/Helpers/GameText;

    add-int/lit8 v14, v9, -0x1

    new-instance v15, Lnet/fdgames/Helpers/GameText;

    aget-object v3, v0, v9

    invoke-direct {v15, v3, v2, v1}, Lnet/fdgames/Helpers/GameText;-><init>(Ljava/lang/String;ZZ)V

    aput-object v15, v11, v14

    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x2

    goto :goto_131

    :cond_145
    array-length v3, v0

    sub-int/2addr v3, v2

    new-array v3, v3, [Lnet/fdgames/Helpers/GameText;

    sput-object v3, Lnet/fdgames/Rules/Rules;->e:[Lnet/fdgames/Helpers/GameText;

    const/4 v3, 0x1

    :goto_14c
    array-length v9, v0

    if-ge v3, v9, :cond_15f

    sget-object v9, Lnet/fdgames/Rules/Rules;->e:[Lnet/fdgames/Helpers/GameText;

    add-int/lit8 v11, v3, -0x1

    new-instance v14, Lnet/fdgames/Helpers/GameText;

    aget-object v15, v0, v3

    invoke-direct {v14, v15, v2, v2}, Lnet/fdgames/Helpers/GameText;-><init>(Ljava/lang/String;ZZ)V

    aput-object v14, v9, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_14c

    :cond_15f
    const-string v0, "ExiledKingdoms.Rules.Load() -        >Subtask 6/12: loading items...."

    invoke-static {v0}, Le/a/e/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/d;

    const-string v3, "data/rules/items.txt"

    invoke-static {v0, v3, v10}, Ld/a/a/a/a;->a(Lcom/badlogic/gdx/d;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    sub-int/2addr v3, v2

    new-array v2, v3, [Lnet/fdgames/Rules/Item;

    sput-object v2, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    const/4 v2, 0x0

    :goto_173
    const/16 v16, 0x2

    sget-object v3, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    array-length v3, v3

    const/4 v9, -0x1

    if-ge v2, v3, :cond_46f

    add-int/lit8 v3, v2, 0x1

    aget-object v11, v0, v3

    invoke-virtual {v11, v10, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v3

    aget-object v11, v0, v3

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v3

    aget-object v11, v0, v3

    const-string v14, "\t"

    invoke-virtual {v11, v14, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    aget-object v11, v9, v1

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_467

    sget-object v11, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    new-instance v14, Lnet/fdgames/Rules/Item;

    invoke-direct {v14}, Lnet/fdgames/Rules/Item;-><init>()V

    aput-object v14, v11, v2

    sget-object v11, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v11, v11, v2

    new-instance v14, Lnet/fdgames/Rules/WeaponStats;

    invoke-direct {v14}, Lnet/fdgames/Rules/WeaponStats;-><init>()V

    iput-object v14, v11, Lnet/fdgames/Rules/Item;->weaponStats:Lnet/fdgames/Rules/WeaponStats;

    sget-object v11, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v11, v11, v2

    aget-object v14, v9, v1

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v11, Lnet/fdgames/Rules/Item;->item_ID:I

    sget-object v11, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v11, v11, v2

    aget-object v14, v9, v16

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, "general"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1d9

    sget-object v14, Lnet/fdgames/Rules/Item$ItemType;->b:Lnet/fdgames/Rules/Item$ItemType;

    goto/16 :goto_286

    :cond_1d9
    const-string v15, "weapon"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e5

    sget-object v14, Lnet/fdgames/Rules/Item$ItemType;->c:Lnet/fdgames/Rules/Item$ItemType;

    goto/16 :goto_286

    :cond_1e5
    const-string v15, "shield"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1f1

    sget-object v14, Lnet/fdgames/Rules/Item$ItemType;->d:Lnet/fdgames/Rules/Item$ItemType;

    goto/16 :goto_286

    :cond_1f1
    const-string v15, "armor_arms"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1fd

    sget-object v14, Lnet/fdgames/Rules/Item$ItemType;->i:Lnet/fdgames/Rules/Item$ItemType;

    goto/16 :goto_286

    :cond_1fd
    const-string v15, "armor_chest"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_209

    sget-object v14, Lnet/fdgames/Rules/Item$ItemType;->f:Lnet/fdgames/Rules/Item$ItemType;

    goto/16 :goto_286

    :cond_209
    const-string v15, "armor_feet"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_215

    sget-object v14, Lnet/fdgames/Rules/Item$ItemType;->g:Lnet/fdgames/Rules/Item$ItemType;

    goto/16 :goto_286

    :cond_215
    const-string v15, "armor_legs"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_221

    sget-object v14, Lnet/fdgames/Rules/Item$ItemType;->h:Lnet/fdgames/Rules/Item$ItemType;

    goto/16 :goto_286

    :cond_221
    const-string v15, "armor_head"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_22c

    sget-object v14, Lnet/fdgames/Rules/Item$ItemType;->e:Lnet/fdgames/Rules/Item$ItemType;

    goto :goto_286

    :cond_22c
    const-string v15, "key"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_237

    sget-object v14, Lnet/fdgames/Rules/Item$ItemType;->l:Lnet/fdgames/Rules/Item$ItemType;

    goto :goto_286

    :cond_237
    const-string v15, "potion"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_242

    sget-object v14, Lnet/fdgames/Rules/Item$ItemType;->j:Lnet/fdgames/Rules/Item$ItemType;

    goto :goto_286

    :cond_242
    const-string v15, "wand"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_24d

    sget-object v14, Lnet/fdgames/Rules/Item$ItemType;->k:Lnet/fdgames/Rules/Item$ItemType;

    goto :goto_286

    :cond_24d
    const-string v15, "ring"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_258

    sget-object v14, Lnet/fdgames/Rules/Item$ItemType;->m:Lnet/fdgames/Rules/Item$ItemType;

    goto :goto_286

    :cond_258
    const-string v15, "belt"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_263

    sget-object v14, Lnet/fdgames/Rules/Item$ItemType;->n:Lnet/fdgames/Rules/Item$ItemType;

    goto :goto_286

    :cond_263
    const-string v15, "cloak"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_26e

    sget-object v14, Lnet/fdgames/Rules/Item$ItemType;->o:Lnet/fdgames/Rules/Item$ItemType;

    goto :goto_286

    :cond_26e
    const-string v15, "necklace"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_279

    sget-object v14, Lnet/fdgames/Rules/Item$ItemType;->p:Lnet/fdgames/Rules/Item$ItemType;

    goto :goto_286

    :cond_279
    const-string v15, "scroll"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_284

    sget-object v14, Lnet/fdgames/Rules/Item$ItemType;->q:Lnet/fdgames/Rules/Item$ItemType;

    goto :goto_286

    :cond_284
    sget-object v14, Lnet/fdgames/Rules/Item$ItemType;->b:Lnet/fdgames/Rules/Item$ItemType;

    :goto_286
    iput-object v14, v11, Lnet/fdgames/Rules/Item;->type:Lnet/fdgames/Rules/Item$ItemType;

    sget-object v11, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v11, v11, v2

    aget-object v14, v9, v1

    const/4 v15, 0x0

    :goto_28f
    sget-object v8, Lnet/fdgames/Rules/Rules;->d:[Lnet/fdgames/Helpers/GameText;

    array-length v4, v8

    const/16 v17, 0x0

    if-ge v15, v4, :cond_2aa

    aget-object v4, v8, v15

    iget-object v4, v4, Lnet/fdgames/Helpers/GameText;->tag:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a5

    sget-object v4, Lnet/fdgames/Rules/Rules;->d:[Lnet/fdgames/Helpers/GameText;

    aget-object v4, v4, v15

    goto :goto_2c2

    :cond_2a5
    add-int/lit8 v15, v15, 0x1

    const/16 v4, 0xf

    goto :goto_28f

    :cond_2aa
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WARNING: item name not found, "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v4, v17

    :goto_2c2
    invoke-virtual {v4}, Lnet/fdgames/Helpers/GameText;->get()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lnet/fdgames/Rules/Item;->d(Ljava/lang/String;)V

    sget-object v4, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v4, v4, v2

    aget-object v8, v9, v1

    const/4 v11, 0x0

    :goto_2d0
    sget-object v14, Lnet/fdgames/Rules/Rules;->e:[Lnet/fdgames/Helpers/GameText;

    array-length v15, v14

    if-ge v11, v15, :cond_2e7

    aget-object v14, v14, v11

    iget-object v14, v14, Lnet/fdgames/Helpers/GameText;->tag:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2e4

    sget-object v8, Lnet/fdgames/Rules/Rules;->e:[Lnet/fdgames/Helpers/GameText;

    aget-object v17, v8, v11

    goto :goto_2fd

    :cond_2e4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2d0

    :cond_2e7
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WARNING: item description not found, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2fd
    invoke-virtual/range {v17 .. v17}, Lnet/fdgames/Helpers/GameText;->get()Ljava/lang/String;

    move-result-object v8

    const-string v11, "\""

    invoke-virtual {v8, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lnet/fdgames/Rules/Item;->c(Ljava/lang/String;)V

    aget-object v4, v9, v5

    if-eq v4, v13, :cond_31a

    sget-object v4, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v4, v4, v2

    aget-object v8, v9, v5

    invoke-static {v8}, Lnet/fdgames/Rules/Rules;->e(Ljava/lang/String;)Lnet/fdgames/Rules/WeaponStats;

    move-result-object v8

    iput-object v8, v4, Lnet/fdgames/Rules/Item;->weaponStats:Lnet/fdgames/Rules/WeaponStats;

    :cond_31a
    aget-object v4, v9, v6

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32e

    sget-object v4, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v4, v4, v2

    aget-object v8, v9, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lnet/fdgames/Rules/Item;->armorBonus:I

    :cond_32e
    sget-object v4, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v4, v4, v2

    aget-object v8, v9, v7

    invoke-virtual {v4, v8}, Lnet/fdgames/Rules/Item;->a(Ljava/lang/String;)V

    sget-object v4, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v4, v4, v2

    const/4 v8, 0x6

    aget-object v8, v9, v8

    invoke-virtual {v4, v8}, Lnet/fdgames/Rules/Item;->b(Ljava/lang/String;)V

    sget-object v4, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v4, v4, v2

    new-instance v8, Lnet/fdgames/Rules/ItemAttributes;

    const/4 v11, 0x7

    aget-object v11, v9, v11

    invoke-direct {v8, v11}, Lnet/fdgames/Rules/ItemAttributes;-><init>(Ljava/lang/String;)V

    iput-object v8, v4, Lnet/fdgames/Rules/Item;->attributes:Lnet/fdgames/Rules/ItemAttributes;

    const/16 v4, 0x8

    aget-object v8, v9, v4

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_365

    sget-object v8, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v8, v8, v2

    aget-object v4, v9, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v8, Lnet/fdgames/Rules/Item;->value:I

    :cond_365
    sget-object v4, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v8, v4, v2

    const/16 v11, 0x9

    aget-object v11, v9, v11

    iput-object v11, v8, Lnet/fdgames/Rules/Item;->icon:Ljava/lang/String;

    const/16 v8, 0xa

    aget-object v11, v9, v8

    if-eq v11, v13, :cond_37f

    aget-object v4, v4, v2

    aget-object v8, v9, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lnet/fdgames/Rules/Item;->HPBonus:I

    :cond_37f
    const/16 v4, 0xb

    aget-object v8, v9, v4

    if-eq v8, v13, :cond_391

    sget-object v8, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v8, v8, v2

    aget-object v4, v9, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v8, Lnet/fdgames/Rules/Item;->ManaBonus:I

    :cond_391
    sget-object v4, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v17, v4, v2

    const/16 v4, 0xc

    aget-object v18, v9, v4

    const/16 v4, 0xd

    aget-object v19, v9, v4

    const/16 v4, 0xe

    aget-object v20, v9, v4

    const/16 v4, 0xf

    aget-object v21, v9, v4

    const/16 v4, 0x10

    aget-object v22, v9, v4

    invoke-virtual/range {v17 .. v22}, Lnet/fdgames/Rules/Item;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v8, v4, v2

    const/16 v11, 0x11

    aget-object v11, v9, v11

    iput-object v11, v8, Lnet/fdgames/Rules/Item;->sprite:Ljava/lang/String;

    aget-object v4, v4, v2

    new-instance v8, Lnet/fdgames/GameLogic/ActionsSet;

    const/16 v11, 0x12

    aget-object v11, v9, v11

    invoke-direct {v8, v11}, Lnet/fdgames/GameLogic/ActionsSet;-><init>(Ljava/lang/String;)V

    iput-object v8, v4, Lnet/fdgames/Rules/Item;->OnTake:Lnet/fdgames/GameLogic/ActionsSet;

    sget-object v4, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v4, v4, v2

    new-instance v8, Lnet/fdgames/GameLogic/ConditionsSet;

    const/16 v11, 0x13

    aget-object v11, v9, v11

    invoke-direct {v8, v11}, Lnet/fdgames/GameLogic/ConditionsSet;-><init>(Ljava/lang/String;)V

    iput-object v8, v4, Lnet/fdgames/Rules/Item;->OnTakeconditions:Lnet/fdgames/GameLogic/ConditionsSet;

    sget-object v4, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v4, v4, v2

    new-instance v8, Lnet/fdgames/GameLogic/ActionsSet;

    const/16 v11, 0x14

    aget-object v11, v9, v11

    invoke-direct {v8, v11}, Lnet/fdgames/GameLogic/ActionsSet;-><init>(Ljava/lang/String;)V

    iput-object v8, v4, Lnet/fdgames/Rules/Item;->OnUse:Lnet/fdgames/GameLogic/ActionsSet;

    sget-object v4, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v4, v4, v2

    iget-object v4, v4, Lnet/fdgames/Rules/Item;->type:Lnet/fdgames/Rules/Item$ItemType;

    sget-object v8, Lnet/fdgames/Rules/Item$ItemType;->j:Lnet/fdgames/Rules/Item$ItemType;

    if-eq v4, v8, :cond_3f5

    sget-object v4, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v4, v4, v2

    iget-object v4, v4, Lnet/fdgames/Rules/Item;->type:Lnet/fdgames/Rules/Item$ItemType;

    sget-object v8, Lnet/fdgames/Rules/Item$ItemType;->q:Lnet/fdgames/Rules/Item$ItemType;

    if-ne v4, v8, :cond_411

    :cond_3f5
    sget-object v4, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v4, v4, v2

    iget-object v4, v4, Lnet/fdgames/Rules/Item;->OnUse:Lnet/fdgames/GameLogic/ActionsSet;

    iget-object v4, v4, Lnet/fdgames/GameLogic/ActionsSet;->actions:Ljava/util/ArrayList;

    new-instance v8, Lnet/fdgames/GameLogic/ScriptedAction;

    sget-object v11, Lnet/fdgames/GameLogic/ScriptedAction$ActionType;->g:Lnet/fdgames/GameLogic/ScriptedAction$ActionType;

    sget-object v14, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v14, v14, v2

    iget v14, v14, Lnet/fdgames/Rules/Item;->item_ID:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v11, v14}, Lnet/fdgames/GameLogic/ScriptedAction;-><init>(Lnet/fdgames/GameLogic/ScriptedAction$ActionType;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_411
    const/16 v4, 0x15

    aget-object v8, v9, v4

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_427

    sget-object v8, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v8, v8, v2

    aget-object v4, v9, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v8, Lnet/fdgames/Rules/Item;->manaCost:I

    :cond_427
    const/16 v4, 0x16

    aget-object v8, v9, v4

    if-eq v8, v13, :cond_43a

    sget-object v8, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v8, v8, v2

    new-instance v11, Lnet/fdgames/GameLogic/PlayerRequirements;

    aget-object v4, v9, v4

    invoke-direct {v11, v4}, Lnet/fdgames/GameLogic/PlayerRequirements;-><init>(Ljava/lang/String;)V

    iput-object v11, v8, Lnet/fdgames/Rules/Item;->requisites:Lnet/fdgames/GameLogic/PlayerRequirements;

    :cond_43a
    sget-object v4, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v4, v4, v2

    new-instance v8, Lnet/fdgames/Rules/ClassRestriction;

    const/16 v11, 0x17

    aget-object v11, v9, v11

    invoke-direct {v8, v11}, Lnet/fdgames/Rules/ClassRestriction;-><init>(Ljava/lang/String;)V

    iput-object v8, v4, Lnet/fdgames/Rules/Item;->classes:Lnet/fdgames/Rules/ClassRestriction;

    const/16 v4, 0x18

    aget-object v4, v9, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v8, "1"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_461

    sget-object v4, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v2, v4, v2

    const/4 v4, 0x1

    iput-boolean v4, v2, Lnet/fdgames/Rules/Item;->stackable:Z

    goto :goto_467

    :cond_461
    sget-object v4, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    aget-object v2, v4, v2

    iput-boolean v1, v2, Lnet/fdgames/Rules/Item;->stackable:Z

    :cond_467
    :goto_467
    const/4 v2, 0x2

    move v2, v3

    const/16 v4, 0xf

    const/16 v8, 0x10

    goto/16 :goto_173

    :cond_46f
    const-string v0, "ExiledKingdoms.Rules.Load() -        >Subtask 7/12: loading bestiary text...."

    invoke-static {v0}, Le/a/e/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/d;

    const-string v2, "data/rules/bestiary_names.txt"

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/d;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/q/a;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/q/a;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\r+"

    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Lnet/fdgames/Helpers/GameText;

    sput-object v2, Lnet/fdgames/Rules/Rules;->c:[Lnet/fdgames/Helpers/GameText;

    const/4 v2, 0x1

    :goto_494
    array-length v3, v0

    if-ge v2, v3, :cond_4a7

    sget-object v3, Lnet/fdgames/Rules/Rules;->c:[Lnet/fdgames/Helpers/GameText;

    add-int/lit8 v4, v2, -0x1

    new-instance v7, Lnet/fdgames/Helpers/GameText;

    aget-object v8, v0, v2

    invoke-direct {v7, v8}, Lnet/fdgames/Helpers/GameText;-><init>(Ljava/lang/String;)V

    aput-object v7, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_494

    :cond_4a7
    const-string v0, "ExiledKingdoms.Rules.Load() -        >Subtask 8/12: loading bestiary...."

    invoke-static {v0}, Le/a/e/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/d;

    const-string v2, "data/rules/bestiary.txt"

    invoke-static {v0, v2, v10}, Ld/a/a/a/a;->a(Lcom/badlogic/gdx/d;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Lnet/fdgames/Rules/Spawn;

    sput-object v2, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    const/4 v2, 0x0

    :goto_4bc
    const/4 v3, 0x5

    sget-object v4, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    array-length v4, v4

    if-ge v2, v4, :cond_733

    add-int/lit8 v4, v2, 0x1

    aget-object v7, v0, v4

    invoke-virtual {v7, v10, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    aget-object v7, v0, v4

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    aget-object v7, v0, v4

    const-string v8, "\t"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    new-instance v11, Lnet/fdgames/Rules/Spawn;

    invoke-direct {v11}, Lnet/fdgames/Rules/Spawn;-><init>()V

    aput-object v11, v8, v2

    sget-object v8, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v8, v8, v2

    new-instance v11, Lnet/fdgames/Rules/WeaponStats;

    invoke-direct {v11}, Lnet/fdgames/Rules/WeaponStats;-><init>()V

    iput-object v11, v8, Lnet/fdgames/Rules/Spawn;->weaponStats:Lnet/fdgames/Rules/WeaponStats;

    sget-object v8, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v8, v8, v2

    aget-object v11, v7, v1

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lnet/fdgames/Rules/Spawn;->spawn_ID:Ljava/lang/String;

    sget-object v8, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v8, v8, v2

    iget-object v8, v8, Lnet/fdgames/Rules/Spawn;->spawn_ID:Ljava/lang/String;

    const/4 v11, 0x0

    :goto_509
    sget-object v14, Lnet/fdgames/Rules/Rules;->c:[Lnet/fdgames/Helpers/GameText;

    array-length v15, v14

    if-ge v11, v15, :cond_520

    aget-object v14, v14, v11

    iget-object v14, v14, Lnet/fdgames/Helpers/GameText;->tag:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_51d

    sget-object v8, Lnet/fdgames/Rules/Rules;->c:[Lnet/fdgames/Helpers/GameText;

    aget-object v8, v8, v11

    goto :goto_537

    :cond_51d
    add-int/lit8 v11, v11, 0x1

    goto :goto_509

    :cond_520
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WARNING: bestiary name not found, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_537
    if-eqz v8, :cond_544

    sget-object v11, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v11, v11, v2

    invoke-virtual {v8}, Lnet/fdgames/Helpers/GameText;->get()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Lnet/fdgames/Rules/Spawn;->a(Ljava/lang/String;)V

    :cond_544
    sget-object v8, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v8, v8, v2

    const/4 v11, 0x1

    aget-object v11, v7, v11

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v14, "human"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_561

    sget-object v11, Lnet/fdgames/Rules/Rules$CharacterRace;->b:Lnet/fdgames/Rules/Rules$CharacterRace;

    goto/16 :goto_5c4

    :cond_561
    const-string v14, "goblin"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_56c

    sget-object v11, Lnet/fdgames/Rules/Rules$CharacterRace;->d:Lnet/fdgames/Rules/Rules$CharacterRace;

    goto :goto_5c4

    :cond_56c
    const-string v14, "orc"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_577

    sget-object v11, Lnet/fdgames/Rules/Rules$CharacterRace;->e:Lnet/fdgames/Rules/Rules$CharacterRace;

    goto :goto_5c4

    :cond_577
    const-string v14, "minotaur"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_582

    sget-object v11, Lnet/fdgames/Rules/Rules$CharacterRace;->f:Lnet/fdgames/Rules/Rules$CharacterRace;

    goto :goto_5c4

    :cond_582
    const-string v14, "weak"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_58d

    sget-object v11, Lnet/fdgames/Rules/Rules$CharacterRace;->h:Lnet/fdgames/Rules/Rules$CharacterRace;

    goto :goto_5c4

    :cond_58d
    const-string v14, "strong"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_598

    sget-object v11, Lnet/fdgames/Rules/Rules$CharacterRace;->i:Lnet/fdgames/Rules/Rules$CharacterRace;

    goto :goto_5c4

    :cond_598
    const-string v14, "miniboss"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5a3

    sget-object v11, Lnet/fdgames/Rules/Rules$CharacterRace;->j:Lnet/fdgames/Rules/Rules$CharacterRace;

    goto :goto_5c4

    :cond_5a3
    const-string v14, "npc"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5ae

    sget-object v11, Lnet/fdgames/Rules/Rules$CharacterRace;->l:Lnet/fdgames/Rules/Rules$CharacterRace;

    goto :goto_5c4

    :cond_5ae
    const-string v14, "boss"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5b9

    sget-object v11, Lnet/fdgames/Rules/Rules$CharacterRace;->k:Lnet/fdgames/Rules/Rules$CharacterRace;

    goto :goto_5c4

    :cond_5b9
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5c2

    sget-object v11, Lnet/fdgames/Rules/Rules$CharacterRace;->g:Lnet/fdgames/Rules/Rules$CharacterRace;

    goto :goto_5c4

    :cond_5c2
    sget-object v11, Lnet/fdgames/Rules/Rules$CharacterRace;->g:Lnet/fdgames/Rules/Rules$CharacterRace;

    :goto_5c4
    iput-object v11, v8, Lnet/fdgames/Rules/Spawn;->race:Lnet/fdgames/Rules/Rules$CharacterRace;

    sget-object v8, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v8, v8, v2

    const/4 v11, 0x2

    aget-object v11, v7, v11

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnet/fdgames/Rules/Rules;->a(Ljava/lang/String;)Lnet/fdgames/Rules/Rules$CharacterClass;

    move-result-object v11

    iput-object v11, v8, Lnet/fdgames/Rules/Spawn;->characterclass:Lnet/fdgames/Rules/Rules$CharacterClass;

    sget-object v8, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v8, v8, v2

    aget-object v11, v7, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v8, Lnet/fdgames/Rules/Spawn;->minlevel:I

    sget-object v8, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v8, v8, v2

    aget-object v11, v7, v6

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v8, Lnet/fdgames/Rules/Spawn;->maxlevel:I

    sget-object v8, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v8, v8, v2

    aget-object v3, v7, v3

    invoke-static {v3}, Lnet/fdgames/Rules/Rules;->e(Ljava/lang/String;)Lnet/fdgames/Rules/WeaponStats;

    move-result-object v3

    iput-object v3, v8, Lnet/fdgames/Rules/Spawn;->weaponStats:Lnet/fdgames/Rules/WeaponStats;

    sget-object v3, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v3, v3, v2

    const/4 v8, 0x6

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lnet/fdgames/Rules/Spawn;->baseArmor:I

    sget-object v3, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v3, v3, v2

    new-instance v8, Lnet/fdgames/GameEntities/CharacterSheet/CharacterResistances;

    const/4 v11, 0x7

    aget-object v11, v7, v11

    const-string v14, "\""

    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8}, Lnet/fdgames/GameEntities/CharacterSheet/CharacterResistances;-><init>()V

    invoke-virtual {v8, v11}, Lnet/fdgames/GameEntities/CharacterSheet/CharacterResistances;->a(Ljava/lang/String;)V

    iput-object v8, v3, Lnet/fdgames/Rules/Spawn;->resistances:Lnet/fdgames/GameEntities/CharacterSheet/CharacterResistances;

    sget-object v3, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v3, v3, v2

    const/16 v8, 0x8

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v3, Lnet/fdgames/Rules/Spawn;->speedModifier:F

    sget-object v3, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v3, v3, v2

    const/16 v8, 0x9

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lnet/fdgames/Rules/Spawn;->attributes:Ljava/lang/String;

    sget-object v3, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v3, v3, v2

    const/16 v8, 0xa

    aget-object v8, v7, v8

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lnet/fdgames/Rules/Spawn;->lootTable:Ljava/lang/String;

    sget-object v3, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v3, v3, v2

    const/16 v8, 0xb

    aget-object v8, v7, v8

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lnet/fdgames/Rules/Spawn;->spriteName:Ljava/lang/String;

    sget-object v3, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v8, v3, v2

    aget-object v3, v3, v2

    iget-object v3, v3, Lnet/fdgames/Rules/Spawn;->spriteName:Ljava/lang/String;

    const-string v11, "_large"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v8, Lnet/fdgames/Rules/Spawn;->extraSize:Z

    sget-object v3, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v3, v3, v2

    const/16 v8, 0xc

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iput-object v8, v3, Lnet/fdgames/Rules/Spawn;->size:Ljava/lang/Float;

    sget-object v3, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v3, v3, v2

    const/16 v8, 0xd

    aget-object v8, v7, v8

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lnet/fdgames/Rules/Spawn;->skills:Ljava/lang/String;

    sget-object v3, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v3, v3, v2

    const/16 v8, 0xe

    aget-object v8, v7, v8

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lnet/fdgames/Rules/Spawn;->AI_type:Ljava/lang/String;

    sget-object v3, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v8, v3, v2

    const/16 v11, 0xf

    aget-object v14, v7, v11

    iput-object v14, v8, Lnet/fdgames/Rules/Spawn;->faction:Ljava/lang/String;

    aget-object v3, v3, v2

    const/16 v8, 0x10

    aget-object v14, v7, v8

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "f"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6e0

    sget-object v14, Lnet/fdgames/GameEntities/Character$Gender;->c:Lnet/fdgames/GameEntities/Character$Gender;

    goto :goto_6e2

    :cond_6e0
    sget-object v14, Lnet/fdgames/GameEntities/Character$Gender;->b:Lnet/fdgames/GameEntities/Character$Gender;

    :goto_6e2
    iput-object v14, v3, Lnet/fdgames/Rules/Spawn;->gender:Lnet/fdgames/GameEntities/Character$Gender;

    sget-object v3, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v3, v3, v2

    const/16 v14, 0x11

    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v3, Lnet/fdgames/Rules/Spawn;->portrait:I

    sget-object v3, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v14, v3, v2

    const/16 v15, 0x12

    aget-object v15, v7, v15

    iput-object v15, v14, Lnet/fdgames/Rules/Spawn;->onDieConditions:Ljava/lang/String;

    aget-object v14, v3, v2

    const/16 v15, 0x13

    aget-object v15, v7, v15

    iput-object v15, v14, Lnet/fdgames/Rules/Spawn;->onDieActions:Ljava/lang/String;

    aget-object v3, v3, v2

    const/16 v14, 0x14

    aget-object v14, v7, v14

    invoke-static {v14}, Lnet/fdgames/Helpers/FDUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lnet/fdgames/Rules/Spawn;->onAggroSound:Ljava/lang/String;

    sget-object v3, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v3, v3, v2

    const/16 v14, 0x15

    aget-object v7, v7, v14

    invoke-static {v7}, Lnet/fdgames/Helpers/FDUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lnet/fdgames/Rules/Spawn;->onDieSound:Ljava/lang/String;

    sget-object v3, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v3, v3, v2

    iget-object v3, v3, Lnet/fdgames/Rules/Spawn;->onAggroSound:Ljava/lang/String;

    invoke-static {v3}, Lnet/fdgames/assets/GameAssets;->g(Ljava/lang/String;)V

    sget-object v3, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v2, v3, v2

    iget-object v2, v2, Lnet/fdgames/Rules/Spawn;->onDieSound:Ljava/lang/String;

    invoke-static {v2}, Lnet/fdgames/assets/GameAssets;->g(Ljava/lang/String;)V

    move v2, v4

    goto/16 :goto_4bc

    :cond_733
    const-string v0, "ExiledKingdoms.Rules.Load() -        >Subtask 9/12: loading loot...."

    invoke-static {v0}, Le/a/e/b;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/fdgames/Rules/Rules;->g:Ljava/util/ArrayList;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/d;

    const-string v2, "data/rules/loot.txt"

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/d;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/q/a;

    move-result-object v0

    const-string v2, "UTF-16"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/q/a;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    :goto_752
    array-length v3, v0

    if-ge v2, v3, :cond_7b3

    aget-object v3, v0, v2

    invoke-virtual {v3, v10, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aget-object v3, v0, v2

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aget-object v3, v0, v2

    const-string v4, "\t"

    invoke-virtual {v3, v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnet/fdgames/Rules/LootItem;

    aget-object v7, v3, v1

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v3, v8

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v11, v3, v5

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aget-object v3, v3, v6

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v7, v8, v11, v3}, Lnet/fdgames/Rules/LootItem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sget-object v3, Lnet/fdgames/Rules/Rules;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_752

    :cond_7b3
    sget-object v0, Lnet/fdgames/Rules/Rules;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_7c4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "WARNING: ********** Loot Tables not correctly loaded ***********"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7c4
    const-string v0, "ExiledKingdoms.Rules.Load() -        >Subtask 10/12: loading rewards...."

    invoke-static {v0}, Le/a/e/b;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/fdgames/Rules/Rules;->i:Ljava/util/ArrayList;

    sget-object v0, Lnet/fdgames/Rules/Rules;->i:Ljava/util/ArrayList;

    new-instance v1, Lnet/fdgames/Rules/RewardTable;

    const-string v2, "gold"

    invoke-direct {v1, v2}, Lnet/fdgames/Rules/RewardTable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/fdgames/Rules/Rules;->i:Ljava/util/ArrayList;

    new-instance v1, Lnet/fdgames/Rules/RewardTable;

    const-string v2, "potions"

    invoke-direct {v1, v2}, Lnet/fdgames/Rules/RewardTable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/fdgames/Rules/Rules;->i:Ljava/util/ArrayList;

    new-instance v1, Lnet/fdgames/Rules/RewardTable;

    const-string v2, "mercian_armor"

    invoke-direct {v1, v2}, Lnet/fdgames/Rules/RewardTable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ExiledKingdoms.Rules.Load() -        >Subtask 11/12: loading traps...."

    invoke-static {v0}, Le/a/e/b;->a(Ljava/lang/String;)V

    new-instance v0, Lnet/fdgames/Rules/TrapData;

    invoke-direct {v0}, Lnet/fdgames/Rules/TrapData;-><init>()V

    sput-object v0, Lnet/fdgames/Rules/Rules;->j:Lnet/fdgames/Rules/TrapData;

    const-string v0, "ExiledKingdoms.Rules.Load() -        >Subtask 12/12: loading map effects...."

    invoke-static {v0}, Le/a/e/b;->a(Ljava/lang/String;)V

    new-instance v0, Lnet/fdgames/Rules/MapEffectData;

    invoke-direct {v0}, Lnet/fdgames/Rules/MapEffectData;-><init>()V

    sput-object v0, Lnet/fdgames/Rules/Rules;->k:Lnet/fdgames/Rules/MapEffectData;

    const-string v0, "ExiledKingdoms.Rules.Load() - Ruleset loaded"

    invoke-static {v0}, Le/a/e/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static b(I)F
    .registers 2

    int-to-float p0, p0

    const/high16 v0, 0x41200000  # 10.0f

    div-float/2addr v0, p0

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .registers 5

    sget-object v0, Lnet/fdgames/Rules/Rules;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/fdgames/Rules/LootItem;

    iget v3, v2, Lnet/fdgames/Rules/LootItem;->item_ID:I

    if-gez v3, :cond_7

    iget-object v3, v2, Lnet/fdgames/Rules/LootItem;->table:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v2, Lnet/fdgames/Rules/LootItem;->conditions:Lnet/fdgames/GameLogic/ConditionsSet;

    invoke-virtual {v3}, Lnet/fdgames/GameLogic/ConditionsSet;->a()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lnet/fdgames/Rules/LootItem;->a()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    iget v2, v2, Lnet/fdgames/Rules/LootItem;->item_ID:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lnet/fdgames/Helpers/FDUtils;->c(II)I

    move-result v2

    add-int/2addr v2, v1

    move v1, v2

    goto :goto_7

    :cond_43
    return v1
.end method

.method public static b(Ljava/lang/String;I)V
    .registers 5

    sget-object v0, Lnet/fdgames/Rules/Rules;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fdgames/Rules/RewardTable;

    iget-object v2, v1, Lnet/fdgames/Rules/RewardTable;->id:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, p1}, Lnet/fdgames/Rules/RewardTable;->b(I)V

    goto :goto_6

    :cond_1e
    invoke-static {}, Lnet/fdgames/GameWorld/GameData;->O()Lnet/fdgames/GameWorld/GameData;

    move-result-object p0

    iget-object p0, p0, Lnet/fdgames/GameWorld/GameData;->player:Lnet/fdgames/GameEntities/Final/Player;

    mul-int/lit8 p1, p1, 0x46

    invoke-virtual {p0, p1}, Lnet/fdgames/GameEntities/Final/Player;->k(I)V

    invoke-static {}, Lnet/fdgames/GameWorld/GameData;->O()Lnet/fdgames/GameWorld/GameData;

    move-result-object p0

    iget-object p0, p0, Lnet/fdgames/GameWorld/GameData;->log:Lnet/fdgames/GameWorld/GameLog;

    invoke-virtual {p0, p1}, Lnet/fdgames/GameWorld/GameLog;->c(I)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lnet/fdgames/GameWorld/GameData;->O()Lnet/fdgames/GameWorld/GameData;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fdgames/GameWorld/GameData;->m()I

    move-result v1

    const/16 v2, 0x5f

    const/16 v3, 0x46

    if-le v1, v3, :cond_17

    if-gt v1, v2, :cond_17

    const/4 v3, 0x2

    goto :goto_18

    :cond_17
    const/4 v3, 0x1

    :goto_18
    if-le v1, v2, :cond_1b

    const/4 v3, 0x3

    :cond_1b
    sget-object v1, Lnet/fdgames/Rules/Rules;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/fdgames/Rules/LootItem;

    iget v5, v4, Lnet/fdgames/Rules/LootItem;->item_ID:I

    if-lez v5, :cond_22

    iget-object v5, v4, Lnet/fdgames/Rules/LootItem;->table:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    iget-object v5, v4, Lnet/fdgames/Rules/LootItem;->conditions:Lnet/fdgames/GameLogic/ConditionsSet;

    invoke-virtual {v5}, Lnet/fdgames/GameLogic/ConditionsSet;->a()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual {v4}, Lnet/fdgames/Rules/LootItem;->a()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_22

    iget v5, v4, Lnet/fdgames/Rules/LootItem;->item_ID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v4, Lnet/fdgames/Rules/LootItem;->chance:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_61

    add-int/lit8 v2, v2, 0x1

    :cond_61
    if-lt v2, v3, :cond_22

    :cond_63
    return-object v0
.end method

.method public static c(I)Lnet/fdgames/Rules/Item;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    array-length v2, v1

    if-ge v0, v2, :cond_12

    aget-object v2, v1, v0

    iget v2, v2, Lnet/fdgames/Rules/Item;->item_ID:I

    if-ne v2, p0, :cond_f

    aget-object p0, v1, v0

    return-object p0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(I)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_b

    invoke-static {p0}, Lnet/fdgames/Rules/Rules;->c(I)Lnet/fdgames/Rules/Item;

    move-result-object p0

    invoke-virtual {p0}, Lnet/fdgames/Rules/Item;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string p0, ""

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Lnet/fdgames/Rules/Spawn;
    .registers 5

    sget-object v0, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_24

    sget-object v2, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object v2, v2, v1

    iget-object v2, v2, Lnet/fdgames/Rules/Spawn;->spawn_ID:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    sget-object p0, Lnet/fdgames/Rules/Rules;->b:[Lnet/fdgames/Rules/Spawn;

    aget-object p0, p0, v1

    return-object p0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_24
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING: spawn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(I)Ljava/lang/Boolean;
    .registers 2

    if-eqz p0, :cond_3a

    invoke-static {p0}, Lnet/fdgames/Rules/Rules;->c(I)Lnet/fdgames/Rules/Item;

    move-result-object p0

    iget-object p0, p0, Lnet/fdgames/Rules/Item;->type:Lnet/fdgames/Rules/Item$ItemType;

    sget-object v0, Lnet/fdgames/Rules/Item$ItemType;->i:Lnet/fdgames/Rules/Item$ItemType;

    if-eq p0, v0, :cond_34

    sget-object v0, Lnet/fdgames/Rules/Item$ItemType;->f:Lnet/fdgames/Rules/Item$ItemType;

    if-eq p0, v0, :cond_34

    sget-object v0, Lnet/fdgames/Rules/Item$ItemType;->g:Lnet/fdgames/Rules/Item$ItemType;

    if-eq p0, v0, :cond_34

    sget-object v0, Lnet/fdgames/Rules/Item$ItemType;->e:Lnet/fdgames/Rules/Item$ItemType;

    if-eq p0, v0, :cond_34

    sget-object v0, Lnet/fdgames/Rules/Item$ItemType;->h:Lnet/fdgames/Rules/Item$ItemType;

    if-eq p0, v0, :cond_34

    sget-object v0, Lnet/fdgames/Rules/Item$ItemType;->m:Lnet/fdgames/Rules/Item$ItemType;

    if-eq p0, v0, :cond_34

    sget-object v0, Lnet/fdgames/Rules/Item$ItemType;->n:Lnet/fdgames/Rules/Item$ItemType;

    if-eq p0, v0, :cond_34

    sget-object v0, Lnet/fdgames/Rules/Item$ItemType;->c:Lnet/fdgames/Rules/Item$ItemType;

    if-eq p0, v0, :cond_34

    sget-object v0, Lnet/fdgames/Rules/Item$ItemType;->d:Lnet/fdgames/Rules/Item$ItemType;

    if-eq p0, v0, :cond_34

    sget-object v0, Lnet/fdgames/Rules/Item$ItemType;->p:Lnet/fdgames/Rules/Item$ItemType;

    if-eq p0, v0, :cond_34

    sget-object v0, Lnet/fdgames/Rules/Item$ItemType;->o:Lnet/fdgames/Rules/Item$ItemType;

    if-ne p0, v0, :cond_3a

    :cond_34
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3a
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Lnet/fdgames/Rules/WeaponStats;
    .registers 4

    sget-object v0, Lnet/fdgames/Rules/Rules;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_25

    sget-object v2, Lnet/fdgames/Rules/Rules;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/fdgames/Rules/WeaponStats;

    iget-object v2, v2, Lnet/fdgames/Rules/WeaponStats;->id:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object p0, Lnet/fdgames/Rules/Rules;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/fdgames/Rules/WeaponStats;

    return-object p0

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(I)Ljava/lang/Boolean;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    sget-object v2, Lnet/fdgames/Rules/Rules;->a:[Lnet/fdgames/Rules/Item;

    array-length v3, v2

    if-ge v1, v3, :cond_19

    aget-object v3, v2, v1

    iget v3, v3, Lnet/fdgames/Rules/Item;->item_ID:I

    if-ne v3, p0, :cond_16

    aget-object p0, v2, v1

    iget-boolean p0, p0, Lnet/fdgames/Rules/Item;->stackable:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
