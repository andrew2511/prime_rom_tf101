.class public Lcom/layar/data/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# static fields
.field public static final GEO_FILTER:Lcom/layar/data/Filter;

.field public static final KEYWORD_FILTER:Lcom/layar/data/Filter;

.field public static final RADIUS_FILTER:Lcom/layar/data/Filter;


# instance fields
.field public info:Lorg/json/JSONObject;

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    new-instance v0, Lcom/layar/data/Filter;

    const-string v1, "geo"

    invoke-direct {v0, v1}, Lcom/layar/data/Filter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/layar/data/Filter;->GEO_FILTER:Lcom/layar/data/Filter;

    .line 7
    new-instance v0, Lcom/layar/data/Filter;

    const-string v1, "radius"

    invoke-direct {v0, v1}, Lcom/layar/data/Filter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/layar/data/Filter;->RADIUS_FILTER:Lcom/layar/data/Filter;

    .line 8
    new-instance v0, Lcom/layar/data/Filter;

    const-string v1, "keyword"

    invoke-direct {v0, v1}, Lcom/layar/data/Filter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/layar/data/Filter;->KEYWORD_FILTER:Lcom/layar/data/Filter;

    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/layar/data/Filter;->name:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static getReservedFilter(Ljava/lang/String;)Lcom/layar/data/Filter;
    .locals 1
    .parameter "name"

    .prologue
    .line 19
    const-string v0, "geo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/layar/data/Filter;->GEO_FILTER:Lcom/layar/data/Filter;

    .line 25
    :goto_0
    return-object v0

    .line 21
    :cond_0
    const-string v0, "radius"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    sget-object v0, Lcom/layar/data/Filter;->RADIUS_FILTER:Lcom/layar/data/Filter;

    goto :goto_0

    .line 23
    :cond_1
    const-string v0, "keyword"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    sget-object v0, Lcom/layar/data/Filter;->KEYWORD_FILTER:Lcom/layar/data/Filter;

    goto :goto_0

    .line 25
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isReservedFilter(Lcom/layar/data/Filter;)Z
    .locals 1
    .parameter "filter"

    .prologue
    .line 29
    sget-object v0, Lcom/layar/data/Filter;->GEO_FILTER:Lcom/layar/data/Filter;

    if-eq p0, v0, :cond_0

    .line 30
    sget-object v0, Lcom/layar/data/Filter;->RADIUS_FILTER:Lcom/layar/data/Filter;

    if-eq p0, v0, :cond_0

    .line 31
    sget-object v0, Lcom/layar/data/Filter;->KEYWORD_FILTER:Lcom/layar/data/Filter;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 29
    goto :goto_0
.end method
