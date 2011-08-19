.class public final Ldalvik/system/CloseGuard;
.super Ljava/lang/Object;
.source "CloseGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/CloseGuard$1;,
        Ldalvik/system/CloseGuard$DefaultReporter;,
        Ldalvik/system/CloseGuard$Reporter;
    }
.end annotation


# static fields
.field private static volatile ENABLED:Z

.field private static final NOOP:Ldalvik/system/CloseGuard;

.field private static volatile REPORTER:Ldalvik/system/CloseGuard$Reporter;


# instance fields
.field private allocationSite:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 113
    new-instance v0, Ldalvik/system/CloseGuard;

    invoke-direct {v0}, Ldalvik/system/CloseGuard;-><init>()V

    sput-object v0, Ldalvik/system/CloseGuard;->NOOP:Ldalvik/system/CloseGuard;

    .line 120
    const/4 v0, 0x1

    sput-boolean v0, Ldalvik/system/CloseGuard;->ENABLED:Z

    .line 125
    new-instance v0, Ldalvik/system/CloseGuard$DefaultReporter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldalvik/system/CloseGuard$DefaultReporter;-><init>(Ldalvik/system/CloseGuard$1;)V

    sput-object v0, Ldalvik/system/CloseGuard;->REPORTER:Ldalvik/system/CloseGuard$Reporter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ldalvik/system/CloseGuard;
    .registers 1

    .prologue
    .line 134
    sget-boolean v0, Ldalvik/system/CloseGuard;->ENABLED:Z

    if-nez v0, :cond_7

    .line 135
    sget-object v0, Ldalvik/system/CloseGuard;->NOOP:Ldalvik/system/CloseGuard;

    .line 137
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ldalvik/system/CloseGuard;

    invoke-direct {v0}, Ldalvik/system/CloseGuard;-><init>()V

    goto :goto_6
.end method

.method public static getReporter()Ldalvik/system/CloseGuard$Reporter;
    .registers 1

    .prologue
    .line 163
    sget-object v0, Ldalvik/system/CloseGuard;->REPORTER:Ldalvik/system/CloseGuard$Reporter;

    return-object v0
.end method

.method public static setEnabled(Z)V
    .registers 1
    .parameter "enabled"

    .prologue
    .line 145
    sput-boolean p0, Ldalvik/system/CloseGuard;->ENABLED:Z

    .line 146
    return-void
.end method

.method public static setReporter(Ldalvik/system/CloseGuard$Reporter;)V
    .registers 3
    .parameter "reporter"

    .prologue
    .line 153
    if-nez p0, :cond_a

    .line 154
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reporter == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_a
    sput-object p0, Ldalvik/system/CloseGuard;->REPORTER:Ldalvik/system/CloseGuard$Reporter;

    .line 157
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Ldalvik/system/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    .line 198
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .registers 5
    .parameter "closer"

    .prologue
    .line 179
    if-nez p1, :cond_a

    .line 180
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "closer == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_a
    sget-object v1, Ldalvik/system/CloseGuard;->NOOP:Ldalvik/system/CloseGuard;

    if-eq p0, v1, :cond_12

    sget-boolean v1, Ldalvik/system/CloseGuard;->ENABLED:Z

    if-nez v1, :cond_13

    .line 188
    :cond_12
    :goto_12
    return-void

    .line 186
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Explicit termination method \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, message:Ljava/lang/String;
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ldalvik/system/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    goto :goto_12
.end method

.method public warnIfOpen()V
    .registers 4

    .prologue
    .line 207
    iget-object v1, p0, Ldalvik/system/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    if-eqz v1, :cond_8

    sget-boolean v1, Ldalvik/system/CloseGuard;->ENABLED:Z

    if-nez v1, :cond_9

    .line 216
    :cond_8
    :goto_8
    return-void

    .line 211
    :cond_9
    const-string v0, "A resource was acquired at attached stack trace but never released. See java.io.Closeable for information on avoiding resource leaks."

    .line 215
    .local v0, message:Ljava/lang/String;
    sget-object v1, Ldalvik/system/CloseGuard;->REPORTER:Ldalvik/system/CloseGuard$Reporter;

    iget-object v2, p0, Ldalvik/system/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    invoke-interface {v1, v0, v2}, Ldalvik/system/CloseGuard$Reporter;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method
