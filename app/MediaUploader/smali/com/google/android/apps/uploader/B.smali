.class public final enum Lcom/google/android/apps/uploader/B;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/apps/uploader/B;

.field public static final enum b:Lcom/google/android/apps/uploader/B;

.field public static final enum c:Lcom/google/android/apps/uploader/B;

.field public static final enum d:Lcom/google/android/apps/uploader/B;

.field public static final enum e:Lcom/google/android/apps/uploader/B;

.field public static final enum f:Lcom/google/android/apps/uploader/B;

.field public static final enum g:Lcom/google/android/apps/uploader/B;

.field private static final synthetic h:[Lcom/google/android/apps/uploader/B;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    new-instance v0, Lcom/google/android/apps/uploader/B;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/uploader/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/uploader/B;->a:Lcom/google/android/apps/uploader/B;

    .line 103
    new-instance v0, Lcom/google/android/apps/uploader/B;

    const-string v1, "UPLOADING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/uploader/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/uploader/B;->b:Lcom/google/android/apps/uploader/B;

    .line 104
    new-instance v0, Lcom/google/android/apps/uploader/B;

    const-string v1, "WAITING_TO_RETRY"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/uploader/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/uploader/B;->c:Lcom/google/android/apps/uploader/B;

    .line 105
    new-instance v0, Lcom/google/android/apps/uploader/B;

    const-string v1, "QUEUED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/uploader/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/uploader/B;->d:Lcom/google/android/apps/uploader/B;

    .line 106
    new-instance v0, Lcom/google/android/apps/uploader/B;

    const-string v1, "WAITING_FOR_WIFI"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/uploader/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/uploader/B;->e:Lcom/google/android/apps/uploader/B;

    .line 107
    new-instance v0, Lcom/google/android/apps/uploader/B;

    const-string v1, "COMPLETED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/uploader/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/uploader/B;->f:Lcom/google/android/apps/uploader/B;

    .line 108
    new-instance v0, Lcom/google/android/apps/uploader/B;

    const-string v1, "FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/uploader/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/uploader/B;->g:Lcom/google/android/apps/uploader/B;

    .line 101
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/apps/uploader/B;

    sget-object v1, Lcom/google/android/apps/uploader/B;->a:Lcom/google/android/apps/uploader/B;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/uploader/B;->b:Lcom/google/android/apps/uploader/B;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/uploader/B;->c:Lcom/google/android/apps/uploader/B;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/uploader/B;->d:Lcom/google/android/apps/uploader/B;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/uploader/B;->e:Lcom/google/android/apps/uploader/B;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/uploader/B;->f:Lcom/google/android/apps/uploader/B;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/uploader/B;->g:Lcom/google/android/apps/uploader/B;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/uploader/B;->h:[Lcom/google/android/apps/uploader/B;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/uploader/B;
    .locals 1
    .parameter

    .prologue
    .line 101
    const-class v0, Lcom/google/android/apps/uploader/B;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/B;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/uploader/B;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/google/android/apps/uploader/B;->h:[Lcom/google/android/apps/uploader/B;

    invoke-virtual {v0}, [Lcom/google/android/apps/uploader/B;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/uploader/B;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/google/android/apps/uploader/A;->a:[I

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/B;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 123
    const v0, 0x7f06001f

    :goto_0
    return v0

    .line 113
    :pswitch_0
    const v0, 0x7f060020

    goto :goto_0

    .line 115
    :pswitch_1
    const v0, 0x7f060021

    goto :goto_0

    .line 117
    :pswitch_2
    const v0, 0x7f060022

    goto :goto_0

    .line 119
    :pswitch_3
    const v0, 0x7f060024

    goto :goto_0

    .line 121
    :pswitch_4
    const v0, 0x7f060023

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
