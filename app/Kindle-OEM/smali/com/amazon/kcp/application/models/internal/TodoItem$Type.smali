.class public Lcom/amazon/kcp/application/models/internal/TodoItem$Type;
.super Ljava/lang/Object;
.source "TodoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/models/internal/TodoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final ACCOUNT_SECRETS:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

.field public static final BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

.field public static final BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

.field public static final CRED_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

.field public static final MAGAZINE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

.field public static final NAME_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

.field public static final NEWSPAPER:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

.field public static final PERSONAL:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

.field public static final REMOTE_COMMAND:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

.field public static final SCFG:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

.field public static final SOFTWARE_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

.field public static final UNKNOWN:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

.field public static final WATERMARKS_SNAPSHOT:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;


# instance fields
.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    const-string v1, "EBOK"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 103
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    const-string v1, "EBSP"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 107
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    const-string v1, "NWPR"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NEWSPAPER:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 111
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    const-string v1, "MAGZ"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->MAGAZINE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 115
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    const-string v1, "PSNL"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->PERSONAL:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 119
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    const-string v1, "NAMS"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NAME_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 123
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    const-string v1, "CRED"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->CRED_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 128
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    const-string v1, "CMND"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->REMOTE_COMMAND:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 132
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    const-string v1, "ACSR"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->ACCOUNT_SECRETS:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 136
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    const-string v1, "SNAP"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->WATERMARKS_SNAPSHOT:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 142
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    const-string v1, "KCPU"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->SOFTWARE_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 148
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    const-string v1, "SCFG"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->SCFG:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 153
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->UNKNOWN:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->s:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public static getTodoTypeFromBookType(I)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;
    .locals 1
    .parameter

    .prologue
    .line 221
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->UNKNOWN:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 223
    packed-switch p0, :pswitch_data_0

    .line 236
    :goto_0
    return-object v0

    .line 226
    :pswitch_0
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_0

    .line 229
    :pswitch_1
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->MAGAZINE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_0

    .line 232
    :pswitch_2
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NEWSPAPER:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_0

    .line 235
    :pswitch_3
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getType(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;
    .locals 2
    .parameter "type"

    .prologue
    .line 161
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->UNKNOWN:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 163
    .local v0, eType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 211
    :cond_0
    :goto_0
    return-object v0

    .line 167
    :cond_1
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_0

    .line 171
    :cond_2
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NEWSPAPER:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NEWSPAPER:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_0

    .line 175
    :cond_3
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->MAGAZINE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 177
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->MAGAZINE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_0

    .line 179
    :cond_4
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->PERSONAL:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 181
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->PERSONAL:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_0

    .line 183
    :cond_5
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NAME_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 185
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NAME_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_0

    .line 187
    :cond_6
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->CRED_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 189
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->CRED_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_0

    .line 191
    :cond_7
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->REMOTE_COMMAND:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 193
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->REMOTE_COMMAND:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_0

    .line 195
    :cond_8
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->ACCOUNT_SECRETS:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 197
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->ACCOUNT_SECRETS:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_0

    .line 199
    :cond_9
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->WATERMARKS_SNAPSHOT:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 201
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->WATERMARKS_SNAPSHOT:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto/16 :goto_0

    .line 203
    :cond_a
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->SOFTWARE_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 205
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->SOFTWARE_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto/16 :goto_0

    .line 207
    :cond_b
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->SCFG:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->SCFG:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto/16 :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->s:Ljava/lang/String;

    return-object v0
.end method
