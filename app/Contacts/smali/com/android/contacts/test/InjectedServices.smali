.class public Lcom/android/contacts/test/InjectedServices;
.super Ljava/lang/Object;
.source "InjectedServices.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSystemServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/contacts/test/InjectedServices;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/contacts/test/InjectedServices;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/test/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/contacts/test/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
