.class public Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;
.super Ljava/lang/Object;
.source "LexingTables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/parser/LexingTables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SLexerActEntry"
.end annotation


# instance fields
.field actiontype:B

.field etat:B

.field token:S


# direct methods
.method public constructor <init>(BSB)V
    .locals 0
    .parameter "_actiontype"
    .parameter "_token"
    .parameter "_etat"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-byte p1, p0, Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;->actiontype:B

    .line 43
    iput-short p2, p0, Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;->token:S

    .line 44
    iput-byte p3, p0, Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;->etat:B

    .line 45
    return-void
.end method


# virtual methods
.method public GetActionType()B
    .locals 1

    .prologue
    .line 27
    iget-byte v0, p0, Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;->actiontype:B

    return v0
.end method

.method public GetEtat()B
    .locals 1

    .prologue
    .line 37
    iget-byte v0, p0, Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;->etat:B

    return v0
.end method

.method public GetToken()S
    .locals 1

    .prologue
    .line 32
    iget-short v0, p0, Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;->token:S

    return v0
.end method
