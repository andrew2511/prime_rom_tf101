.class public Lcom/android/vending/util/PreferenceFile;
.super Ljava/lang/Object;
.source "PreferenceFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/util/PreferenceFile$SharedPreference;
    }
.end annotation


# static fields
.field private static sContext:Landroid/content/Context;


# instance fields
.field private final mMode:I

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/vending/util/PreferenceFile;->mName:Ljava/lang/String;

    .line 37
    iput p2, p0, Lcom/android/vending/util/PreferenceFile;->mMode:I

    .line 38
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    sput-object p0, Lcom/android/vending/util/PreferenceFile;->sContext:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 9

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/vending/util/PreferenceFile;->open()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 45
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 46
    .local v0, allPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-static {v7}, Lcom/android/vending/util/Util;->longestString(Ljava/util/Collection;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s = %s\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, format:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v4, s:Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 49
    .local v3, key:Ljava/lang/String;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 51
    .end local v3           #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public open()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 56
    sget-object v0, Lcom/android/vending/util/PreferenceFile;->sContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/vending/util/PreferenceFile;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/android/vending/util/PreferenceFile;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/vending/util/PreferenceFile$SharedPreference;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/android/vending/util/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/android/vending/util/PreferenceFile$3;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/vending/util/PreferenceFile$3;-><init>(Lcom/android/vending/util/PreferenceFile;Lcom/android/vending/util/PreferenceFile;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/vending/util/PreferenceFile$SharedPreference;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/android/vending/util/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lcom/android/vending/util/PreferenceFile$4;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/vending/util/PreferenceFile$4;-><init>(Lcom/android/vending/util/PreferenceFile;Lcom/android/vending/util/PreferenceFile;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public value(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/vending/util/PreferenceFile$SharedPreference;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/android/vending/util/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/android/vending/util/PreferenceFile$1;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/vending/util/PreferenceFile$1;-><init>(Lcom/android/vending/util/PreferenceFile;Lcom/android/vending/util/PreferenceFile;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public value(Ljava/lang/String;Ljava/lang/String;)Lcom/android/vending/util/PreferenceFile$SharedPreference;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/vending/util/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/android/vending/util/PreferenceFile$2;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/vending/util/PreferenceFile$2;-><init>(Lcom/android/vending/util/PreferenceFile;Lcom/android/vending/util/PreferenceFile;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
