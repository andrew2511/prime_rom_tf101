.class public Lcom/mobipocket/common/parser/LexingTables$SLexerInit;
.super Ljava/lang/Object;
.source "LexingTables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/parser/LexingTables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SLexerInit"
.end annotation


# instance fields
.field final entries:[Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;

.field final grouptable:[[B

.field final nbgroup:[I

.field final nbstates:I

.field final startstate:I

.field final transtable:[[B


# direct methods
.method public constructor <init>([[B[[B[III[Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;)V
    .locals 0
    .parameter "_transtable"
    .parameter "_grouptable"
    .parameter "_nbgroup"
    .parameter "_startstate"
    .parameter "_nbstates"
    .parameter "_entries"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/mobipocket/common/parser/LexingTables$SLexerInit;->transtable:[[B

    .line 67
    iput-object p2, p0, Lcom/mobipocket/common/parser/LexingTables$SLexerInit;->grouptable:[[B

    .line 68
    iput-object p3, p0, Lcom/mobipocket/common/parser/LexingTables$SLexerInit;->nbgroup:[I

    .line 69
    iput p4, p0, Lcom/mobipocket/common/parser/LexingTables$SLexerInit;->startstate:I

    .line 70
    iput p5, p0, Lcom/mobipocket/common/parser/LexingTables$SLexerInit;->nbstates:I

    .line 71
    iput-object p6, p0, Lcom/mobipocket/common/parser/LexingTables$SLexerInit;->entries:[Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;

    .line 72
    return-void
.end method
