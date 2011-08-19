.class public final Lcom/google/android/apps/books/net/DeviceAccess;
.super Ljava/lang/Object;
.source "DeviceAccess.java"


# static fields
.field public static final ALLOWED:Ljava/lang/String; = "access:allowed"

.field private static final DEFAULT_ALLOWED:Z = true

.field private static final DEFAULT_DEVICES:I = -0x1

.field static final DEFAULT_SECONDS:J = 0x78L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DEFAULT_UNRESTRICTED:Z = false

.field public static final MAX_DEVICES:Ljava/lang/String; = "access:max_devices"

.field public static final SECONDS:Ljava/lang/String; = "access:seconds"

.field public static final sUnknown:Lcom/google/android/apps/books/net/DeviceAccess;


# instance fields
.field private final mAllowed:Z

.field private final mMaxDevices:J

.field private final mSeconds:J

.field private final mUnrestricted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/apps/books/net/DeviceAccess;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x78

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/net/DeviceAccess;-><init>(ZZJJ)V

    sput-object v0, Lcom/google/android/apps/books/net/DeviceAccess;->sUnknown:Lcom/google/android/apps/books/net/DeviceAccess;

    return-void
.end method

.method private constructor <init>(ZZJJ)V
    .locals 0
    .parameter "unrestricted"
    .parameter "allowed"
    .parameter "maxDevices"
    .parameter "seconds"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean p1, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mUnrestricted:Z

    .line 71
    iput-boolean p2, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mAllowed:Z

    .line 72
    iput-wide p3, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mMaxDevices:J

    .line 73
    iput-wide p5, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mSeconds:J

    .line 74
    return-void
.end method

.method public static newInstance(Landroid/content/ContentValues;)Lcom/google/android/apps/books/net/DeviceAccess;
    .locals 15
    .parameter "values"

    .prologue
    const/4 v13, 0x1

    const-string v14, "access:seconds"

    .line 82
    const-string v0, "access:allowed"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    .line 83
    .local v7, allowedObj:Ljava/lang/Boolean;
    if-nez v7, :cond_1

    move v2, v13

    .line 85
    .local v2, allowed:Z
    :goto_0
    const-string v0, "access:max_devices"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 86
    .local v8, devicesObj:Ljava/lang/Long;
    if-nez v8, :cond_2

    const-wide/16 v0, -0x1

    move-wide v3, v0

    .line 88
    .local v3, devices:J
    :goto_1
    const-string v0, "access:seconds"

    invoke-virtual {p0, v14}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 89
    .local v9, secondsObj:Ljava/lang/Long;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v11, 0x0

    cmp-long v0, v0, v11

    if-gtz v0, :cond_3

    :cond_0
    const-wide/16 v0, 0x78

    move-wide v5, v0

    .line 92
    .local v5, seconds:J
    :goto_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "access:seconds"

    invoke-virtual {p0, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v13

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 95
    .local v10, unrestricted:Ljava/lang/Boolean;
    new-instance v0, Lcom/google/android/apps/books/net/DeviceAccess;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/net/DeviceAccess;-><init>(ZZJJ)V

    return-object v0

    .line 83
    .end local v2           #allowed:Z
    .end local v3           #devices:J
    .end local v5           #seconds:J
    .end local v8           #devicesObj:Ljava/lang/Long;
    .end local v9           #secondsObj:Ljava/lang/Long;
    .end local v10           #unrestricted:Ljava/lang/Boolean;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v2, v0

    goto :goto_0

    .line 86
    .restart local v2       #allowed:Z
    .restart local v8       #devicesObj:Ljava/lang/Long;
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v3, v0

    goto :goto_1

    .line 89
    .restart local v3       #devices:J
    .restart local v9       #secondsObj:Ljava/lang/Long;
    :cond_3
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v5, v0

    goto :goto_2

    .line 92
    .restart local v5       #seconds:J
    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static newInstance(ZZJJ)Lcom/google/android/apps/books/net/DeviceAccess;
    .locals 7
    .parameter "unrestricted"
    .parameter "allowed"
    .parameter "maxDevices"
    .parameter "seconds"

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/apps/books/net/DeviceAccess;

    move v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/net/DeviceAccess;-><init>(ZZJJ)V

    return-object v0
.end method


# virtual methods
.method public getMaxDevices()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mMaxDevices:J

    return-wide v0
.end method

.method public getSeconds()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mSeconds:J

    return-wide v0
.end method

.method public isAllowed()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mAllowed:Z

    return v0
.end method

.method public isUnrestricted()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mUnrestricted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceAccess{unrestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mUnrestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", devices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mMaxDevices:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/books/net/DeviceAccess;->mSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
