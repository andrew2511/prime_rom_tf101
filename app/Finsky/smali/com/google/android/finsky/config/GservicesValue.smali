.class public abstract Lcom/google/android/finsky/config/GservicesValue;
.super Ljava/lang/Object;
.source "GservicesValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;,
        Lcom/google/android/finsky/config/GservicesValue$GservicesReader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sGservicesReader:Lcom/google/android/finsky/config/GservicesValue$GservicesReader;


# instance fields
.field protected final mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mKey:Ljava/lang/String;

.field private mOverride:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/config/GservicesValue;->sGservicesReader:Lcom/google/android/finsky/config/GservicesValue$GservicesReader;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, this:Lcom/google/android/finsky/config/GservicesValue;,"Lcom/google/android/finsky/config/GservicesValue<TT;>;"
    .local p2, defaultValue:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/config/GservicesValue;->mOverride:Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/google/android/finsky/config/GservicesValue;->mKey:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/google/android/finsky/config/GservicesValue;->mDefaultValue:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method static synthetic access$100()Lcom/google/android/finsky/config/GservicesValue$GservicesReader;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/android/finsky/config/GservicesValue;->sGservicesReader:Lcom/google/android/finsky/config/GservicesValue$GservicesReader;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;-><init>(Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/google/android/finsky/config/GservicesValue;->sGservicesReader:Lcom/google/android/finsky/config/GservicesValue$GservicesReader;

    .line 23
    return-void
.end method

.method public static partnerSetting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/GservicesValue;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/GservicesValue;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$3;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/GservicesValue;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$2;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/GservicesValue;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Z)Lcom/google/android/finsky/config/GservicesValue;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/config/GservicesValue$1;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lcom/google/android/finsky/config/GservicesValue;,"Lcom/google/android/finsky/config/GservicesValue<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue;->mOverride:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue;->mOverride:Ljava/lang/Object;

    .line 49
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/config/GservicesValue;->retrieve(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract retrieve(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
