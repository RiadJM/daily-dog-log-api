const mongoose = require('mongoose')

const logSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true
  },
  date: {
    type: String,
    required: true
  },
  breakfast: {
    type: String,
    required: true
  },
  dinner: {
    type: String,
    required: true
  },
  exercise: {
    type: String,
    required: true
  },
  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  }
}, {
  timestamps: true
})

module.exports = mongoose.model('Log', logSchema)
