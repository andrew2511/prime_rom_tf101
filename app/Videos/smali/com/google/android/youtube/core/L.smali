.class public Lcom/google/android/youtube/core/L;
.super Ljava/lang/Object;
.source "L.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/L$1;,
        Lcom/google/android/youtube/core/L$Type;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final PACKAGE_ROOT:Ljava/lang/String; = "com.google.android."

.field private static final PACKAGE_ROOT_LENGTH:I

.field private static final THIS_CLASS_NAME:Ljava/lang/String;

.field private static tag:Ljava/lang/String;

.field private static verboseFilter:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-class v1, Lcom/google/android/youtube/core/L;

    .line 18
    const-class v0, Lcom/google/android/youtube/core/L;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/youtube/core/L;->$assertionsDisabled:Z

    .line 27
    const-string v0, "L"

    sput-object v0, Lcom/google/android/youtube/core/L;->tag:Ljava/lang/String;

    .line 37
    const-string v0, "com.google.android."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/android/youtube/core/L;->PACKAGE_ROOT_LENGTH:I

    .line 43
    const-class v0, Lcom/google/android/youtube/core/L;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/L;->THIS_CLASS_NAME:Ljava/lang/String;

    .line 48
    const-string v0, ""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/L;->verboseFilter:Ljava/util/regex/Pattern;

    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 127
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->DEBUG:Lcom/google/android/youtube/core/L$Type;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/android/youtube/core/L;->log(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "throwable"

    .prologue
    .line 137
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->DEBUG:Lcom/google/android/youtube/core/L$Type;

    invoke-static {v0, p0, p1}, Lcom/google/android/youtube/core/L;->log(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 68
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->ERROR:Lcom/google/android/youtube/core/L$Type;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/android/youtube/core/L;->log(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "throwable"

    .prologue
    .line 78
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->ERROR:Lcom/google/android/youtube/core/L$Type;

    invoke-static {v0, p0, p1}, Lcom/google/android/youtube/core/L;->log(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method static getCallingMethodString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 187
    .local v1, callStack:[Ljava/lang/StackTraceElement;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 188
    .local v5, stackEntry:Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, className:Ljava/lang/String;
    sget-object v6, Lcom/google/android/youtube/core/L;->THIS_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.google.android."

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/google/android/youtube/core/L;->PACKAGE_ROOT_LENGTH:I

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 195
    .end local v2           #className:Ljava/lang/String;
    .end local v5           #stackEntry:Ljava/lang/StackTraceElement;
    :goto_1
    return-object v6

    .line 187
    .restart local v2       #className:Ljava/lang/String;
    .restart local v5       #stackEntry:Ljava/lang/StackTraceElement;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    .end local v2           #className:Ljava/lang/String;
    .end local v5           #stackEntry:Ljava/lang/StackTraceElement;
    :cond_1
    const-string v6, "(unknown)"

    goto :goto_1
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 107
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->INFO:Lcom/google/android/youtube/core/L$Type;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/android/youtube/core/L;->log(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "throwable"

    .prologue
    .line 118
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->INFO:Lcom/google/android/youtube/core/L$Type;

    invoke-static {v0, p0, p1}, Lcom/google/android/youtube/core/L;->log(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    return-void
.end method

.method private static log(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "type"
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, callingMethod:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/youtube/core/L;->getCallingMethodString()Ljava/lang/String;

    move-result-object v0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 215
    sget-object v1, Lcom/google/android/youtube/core/L$1;->$SwitchMap$com$google$android$youtube$core$L$Type:[I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/L$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 239
    sget-boolean v1, Lcom/google/android/youtube/core/L;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Unknown type."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 217
    :pswitch_0
    sget-object v1, Lcom/google/android/youtube/core/L;->tag:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 221
    :pswitch_1
    sget-object v1, Lcom/google/android/youtube/core/L;->tag:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 225
    :pswitch_2
    sget-object v1, Lcom/google/android/youtube/core/L;->tag:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 229
    :pswitch_3
    sget-object v1, Lcom/google/android/youtube/core/L;->tag:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 233
    :pswitch_4
    invoke-static {v0}, Lcom/google/android/youtube/core/L;->shouldBeVerboseForMethod(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    sget-object v1, Lcom/google/android/youtube/core/L;->tag:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 215
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

.method public static setTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 59
    sput-object p0, Lcom/google/android/youtube/core/L;->tag:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static setVerboseFilter(Ljava/lang/String;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 177
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/L;->verboseFilter:Ljava/util/regex/Pattern;

    .line 178
    return-void
.end method

.method static shouldBeVerboseForMethod(Ljava/lang/String;)Z
    .locals 1
    .parameter "callingMethod"

    .prologue
    .line 206
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/android/youtube/core/L;->verboseFilter:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static t()V
    .locals 3

    .prologue
    .line 164
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->VERBOSE:Lcom/google/android/youtube/core/L$Type;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/L;->log(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 146
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->VERBOSE:Lcom/google/android/youtube/core/L$Type;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/android/youtube/core/L;->log(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "throwable"

    .prologue
    .line 156
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->VERBOSE:Lcom/google/android/youtube/core/L$Type;

    invoke-static {v0, p0, p1}, Lcom/google/android/youtube/core/L;->log(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 87
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->WARNING:Lcom/google/android/youtube/core/L$Type;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/android/youtube/core/L;->log(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "throwable"

    .prologue
    .line 97
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->WARNING:Lcom/google/android/youtube/core/L$Type;

    invoke-static {v0, p0, p1}, Lcom/google/android/youtube/core/L;->log(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method
