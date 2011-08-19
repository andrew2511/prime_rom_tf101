.class public final enum Lcom/layar/provider/GroupsAlias;
.super Ljava/lang/Enum;
.source "GroupsAlias.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layar/provider/GroupsAlias;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/layar/provider/GroupsAlias; = null

.field public static final enum ID:Lcom/layar/provider/GroupsAlias; = null

.field public static final enum IMAGE_URL:Lcom/layar/provider/GroupsAlias; = null

.field private static final SELECTION:Ljava/lang/String; = null

.field public static final TABLE:Ljava/lang/String; = "groups"

.field private static final TAG:Ljava/lang/String;

.field public static final enum TITLE:Lcom/layar/provider/GroupsAlias;


# instance fields
.field public column:Ljava/lang/String;

.field public fullColumn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lcom/layar/provider/GroupsAlias;

    const-string v1, "ID"

    const-string v2, "id"

    const-string v3, "groups.id"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/layar/provider/GroupsAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/GroupsAlias;->ID:Lcom/layar/provider/GroupsAlias;

    .line 15
    new-instance v0, Lcom/layar/provider/GroupsAlias;

    const-string v1, "TITLE"

    const-string v2, "title"

    const-string v3, "groups.title"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/layar/provider/GroupsAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/GroupsAlias;->TITLE:Lcom/layar/provider/GroupsAlias;

    .line 16
    new-instance v0, Lcom/layar/provider/GroupsAlias;

    const-string v1, "IMAGE_URL"

    const-string v2, "image_url"

    const-string v3, "groups.image_url"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/layar/provider/GroupsAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/GroupsAlias;->IMAGE_URL:Lcom/layar/provider/GroupsAlias;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/layar/provider/GroupsAlias;

    sget-object v1, Lcom/layar/provider/GroupsAlias;->ID:Lcom/layar/provider/GroupsAlias;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layar/provider/GroupsAlias;->TITLE:Lcom/layar/provider/GroupsAlias;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layar/provider/GroupsAlias;->IMAGE_URL:Lcom/layar/provider/GroupsAlias;

    aput-object v1, v0, v6

    sput-object v0, Lcom/layar/provider/GroupsAlias;->ENUM$VALUES:[Lcom/layar/provider/GroupsAlias;

    .line 30
    const-class v0, Lcom/layar/provider/GroupsAlias;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/provider/GroupsAlias;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/layar/provider/GroupsAlias;->ID:Lcom/layar/provider/GroupsAlias;

    iget-object v1, v1, Lcom/layar/provider/GroupsAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " = \'?\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/provider/GroupsAlias;->SELECTION:Ljava/lang/String;

    .line 13
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "column"
    .parameter "fullColumn"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/layar/provider/GroupsAlias;->column:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/layar/provider/GroupsAlias;->fullColumn:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static createObject(Landroid/database/Cursor;)Lcom/layar/data/layer/LayersGroup;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 49
    new-instance v0, Lcom/layar/data/layer/LayersGroup;

    invoke-direct {v0}, Lcom/layar/data/layer/LayersGroup;-><init>()V

    .line 50
    .local v0, result:Lcom/layar/data/layer/LayersGroup;
    sget-object v1, Lcom/layar/provider/GroupsAlias;->ID:Lcom/layar/provider/GroupsAlias;

    iget-object v1, v1, Lcom/layar/provider/GroupsAlias;->column:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/layar/provider/ResolverHelper;->getColumnInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/layar/data/layer/LayersGroup;->id:I

    .line 51
    sget-object v1, Lcom/layar/provider/GroupsAlias;->TITLE:Lcom/layar/provider/GroupsAlias;

    iget-object v1, v1, Lcom/layar/provider/GroupsAlias;->column:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/layer/LayersGroup;->title:Ljava/lang/String;

    .line 52
    sget-object v1, Lcom/layar/provider/GroupsAlias;->IMAGE_URL:Lcom/layar/provider/GroupsAlias;

    iget-object v1, v1, Lcom/layar/provider/GroupsAlias;->column:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/layer/LayersGroup;->imageUrl:Ljava/lang/String;

    .line 53
    return-object v0
.end method

.method public static generateValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 5
    .parameter "item"

    .prologue
    .line 37
    if-eqz p0, :cond_0

    instance-of v3, p0, Lcom/layar/data/layer/LayersGroup;

    if-nez v3, :cond_1

    .line 38
    :cond_0
    const/4 v3, 0x0

    .line 45
    :goto_0
    return-object v3

    .line 39
    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/layar/data/layer/LayersGroup;

    move-object v1, v0

    .line 41
    .local v1, group:Lcom/layar/data/layer/LayersGroup;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 42
    .local v2, result:Landroid/content/ContentValues;
    sget-object v3, Lcom/layar/provider/GroupsAlias;->ID:Lcom/layar/provider/GroupsAlias;

    iget-object v3, v3, Lcom/layar/provider/GroupsAlias;->column:Ljava/lang/String;

    iget v4, v1, Lcom/layar/data/layer/LayersGroup;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    sget-object v3, Lcom/layar/provider/GroupsAlias;->TITLE:Lcom/layar/provider/GroupsAlias;

    iget-object v3, v3, Lcom/layar/provider/GroupsAlias;->column:Ljava/lang/String;

    iget-object v4, v1, Lcom/layar/data/layer/LayersGroup;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object v3, Lcom/layar/provider/GroupsAlias;->IMAGE_URL:Lcom/layar/provider/GroupsAlias;

    iget-object v3, v3, Lcom/layar/provider/GroupsAlias;->column:Ljava/lang/String;

    iget-object v4, v1, Lcom/layar/data/layer/LayersGroup;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 45
    goto :goto_0
.end method

.method public static projection()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 70
    sget-object v2, Lcom/layar/provider/GroupsAlias;->ID:Lcom/layar/provider/GroupsAlias;

    invoke-virtual {v2}, Lcom/layar/provider/GroupsAlias;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 71
    sget-object v2, Lcom/layar/provider/GroupsAlias;->TITLE:Lcom/layar/provider/GroupsAlias;

    invoke-virtual {v2}, Lcom/layar/provider/GroupsAlias;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 72
    sget-object v2, Lcom/layar/provider/GroupsAlias;->IMAGE_URL:Lcom/layar/provider/GroupsAlias;

    invoke-virtual {v2}, Lcom/layar/provider/GroupsAlias;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 69
    return-object v0
.end method

.method public static selection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/layar/provider/GroupsAlias;->SELECTION:Ljava/lang/String;

    return-object v0
.end method

.method public static selectionArgs(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 3
    .parameter "item"

    .prologue
    .line 61
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/layar/data/layer/LayersGroup;

    if-nez v0, :cond_1

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 63
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    check-cast p0, Lcom/layar/data/layer/LayersGroup;

    .end local p0
    iget v2, p0, Lcom/layar/data/layer/LayersGroup;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layar/provider/GroupsAlias;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/layar/provider/GroupsAlias;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/layar/provider/GroupsAlias;

    return-object p0
.end method

.method public static values()[Lcom/layar/provider/GroupsAlias;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/layar/provider/GroupsAlias;->ENUM$VALUES:[Lcom/layar/provider/GroupsAlias;

    array-length v1, v0

    new-array v2, v1, [Lcom/layar/provider/GroupsAlias;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public alias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layar/provider/GroupsAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/provider/GroupsAlias;->column:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
